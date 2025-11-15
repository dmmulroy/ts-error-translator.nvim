-- Run with: nvim --headless -u tests/minimal_init.vim -c "PlenaryBustedFile tests/spec/diagnostic_spec.lua"

local parser = require("ts-error-translator.parser")

-- Helper to simulate translate_diagnostic_message behavior
local function translate_diagnostic_message(message, code)
  local message_with_code = code and ("TS" .. tostring(code) .. ": " .. message) or message
  local parsed = parser.parse_errors(message_with_code)
  if #parsed > 0 and parsed[1].improvedError then
    return parsed[1].improvedError.body
  end
  return message
end

describe("Diagnostic Handler", function()
  describe("translate_diagnostic_message", function()
    it("returns ONLY improved message when match found", function()
      local msg = "Type 'string' is not assignable to type 'number'."
      local code = 2322

      local result = translate_diagnostic_message(msg, code)

      -- Should NOT contain original message
      assert.is_false(string.find(result, "is not assignable", 1, true) ~= nil)
      -- Should contain improved message
      assert.is_true(string.find(result, "I was expecting") ~= nil)
      assert.is_true(string.find(result, "`number`") ~= nil)
      assert.is_true(string.find(result, "`string`") ~= nil)
    end)

    it("uses code field when provided (no TS prefix in message)", function()
      local msg = "Type 'string | undefined' is not assignable to type 'boolean'."
      local code = 2322

      local result = translate_diagnostic_message(msg, code)

      assert.is_true(string.find(result, "I was expecting") ~= nil)
      assert.is_true(string.find(result, "`boolean`") ~= nil)
      assert.is_true(string.find(result, "`string | undefined`") ~= nil)
    end)

    it("returns original message when no match found", function()
      local msg = "Some unknown error message."
      local code = 9999

      local result = translate_diagnostic_message(msg, code)

      assert.equals(msg, result)
    end)

    it("returns original message when code is nil", function()
      local msg = "Type 'string' is not assignable to type 'number'."

      local result = translate_diagnostic_message(msg, nil)

      assert.equals(msg, result)
    end)

    it("handles TS2339 - Property does not exist", function()
      local msg = "Property 'foo' does not exist on type 'Bar'."
      local code = 2339

      local result = translate_diagnostic_message(msg, code)

      assert.is_true(string.find(result, "trying to access") ~= nil)
      assert.is_true(string.find(result, "`foo`") ~= nil)
    end)

    it("handles TS2304 - Cannot find name", function()
      local msg = "Cannot find name 'React'."
      local code = 2304

      local result = translate_diagnostic_message(msg, code)

      assert.is_true(string.find(result, "can't find the variable") ~= nil)
    end)

    it("handles TS2345 - Argument type mismatch", function()
      local msg = "Argument of type 'number' is not assignable to parameter of type 'string'."
      local code = 2345

      local result = translate_diagnostic_message(msg, code)

      assert.is_true(string.find(result, "I was expecting") ~= nil)
      assert.is_true(string.find(result, "`string`") ~= nil)
      assert.is_true(string.find(result, "`number`") ~= nil)
    end)
  end)

  describe("Complex type handling", function()
    it("handles union types in TS2322", function()
      local msg = "Type 'string | number' is not assignable to type 'boolean'."
      local code = 2322

      local result = translate_diagnostic_message(msg, code)

      assert.is_true(string.find(result, "`string | number`") ~= nil)
      assert.is_true(string.find(result, "`boolean`") ~= nil)
    end)

    it("handles generic types in TS2322", function()
      local msg = "Type 'Promise<number>' is not assignable to type 'Promise<string>'."
      local code = 2322

      local result = translate_diagnostic_message(msg, code)

      assert.is_true(string.find(result, "`Promise<number>`") ~= nil)
      assert.is_true(string.find(result, "`Promise<string>`") ~= nil)
    end)

    it("handles intersection types", function()
      local msg = "Type 'A & B' is not assignable to type 'C'."
      local code = 2322

      local result = translate_diagnostic_message(msg, code)

      assert.is_true(string.find(result, "`A & B`") ~= nil)
      assert.is_true(string.find(result, "`C`") ~= nil)
    end)

    it("handles nested generics", function()
      local msg = "Type 'Array<Promise<string>>' is not assignable to type 'Array<Promise<number>>'."
      local code = 2322

      local result = translate_diagnostic_message(msg, code)

      assert.is_true(string.find(result, "`Array<Promise<string>>`") ~= nil)
      assert.is_true(string.find(result, "`Array<Promise<number>>`") ~= nil)
    end)
  end)

  describe("Multi-line messages", function()
    it("handles TypeScript multi-line error messages", function()
      -- TypeScript often adds additional context on new lines
      local msg = "Type 'string | undefined' is not assignable to type 'boolean'.\n  Type 'undefined' is not assignable to type 'boolean'."
      local code = 2322

      local result = translate_diagnostic_message(msg, code)

      -- Should still parse the first line correctly
      assert.is_true(string.find(result, "I was expecting") ~= nil)
    end)
  end)

  describe("LSP handler integration", function()
    local diagnostic_module
    local original_get_client_by_id

    before_each(function()
      -- Clear module cache to get fresh instance
      package.loaded["ts-error-translator.diagnostic"] = nil
      diagnostic_module = require("ts-error-translator.diagnostic")

      -- Save original function
      original_get_client_by_id = vim.lsp.get_client_by_id
    end)

    after_each(function()
      -- Restore original function
      vim.lsp.get_client_by_id = original_get_client_by_id
    end)

    it("mutates diagnostic messages for matching servers", function()
      -- Mock get_client_by_id to return typescript-tools
      vim.lsp.get_client_by_id = function(id)
        if id == 1 then
          return { name = "typescript-tools" }
        end
        return nil
      end

      local result = {
        uri = "file:///test.ts",
        diagnostics = {
          {
            code = 2322,
            message = "Type 'string' is not assignable to type 'number'.",
            range = { start = { line = 0, character = 0 }, ["end"] = { line = 0, character = 10 } },
          },
        },
      }
      local ctx = { client_id = 1 }

      -- Setup handler
      diagnostic_module.setup({ servers = { "typescript-tools" } })

      -- Get the handler
      local handler = vim.lsp.handlers["textDocument/publishDiagnostics"]
      assert.is_not_nil(handler)

      -- Call handler (result is mutated in place)
      handler(nil, result, ctx, nil)

      -- Verify message was translated
      assert.is_true(string.find(result.diagnostics[1].message, "I was expecting") ~= nil)
      -- Verify original message is NOT present
      assert.is_false(string.find(result.diagnostics[1].message, "is not assignable", 1, true) ~= nil)
    end)

    it("ignores diagnostics from non-matching servers", function()
      -- Mock get_client_by_id to return non-matching server
      vim.lsp.get_client_by_id = function(id)
        if id == 1 then
          return { name = "eslint" }
        end
        return nil
      end

      local original_message = "Type 'string' is not assignable to type 'number'."
      local result = {
        uri = "file:///test.ts",
        diagnostics = {
          {
            code = 2322,
            message = original_message,
            range = { start = { line = 0, character = 0 }, ["end"] = { line = 0, character = 10 } },
          },
        },
      }
      local ctx = { client_id = 1 }

      -- Setup handler with only typescript-tools
      diagnostic_module.setup({ servers = { "typescript-tools" } })

      local handler = vim.lsp.handlers["textDocument/publishDiagnostics"]
      handler(nil, result, ctx, nil)

      -- Verify message was NOT translated
      assert.equals(original_message, result.diagnostics[1].message)
    end)

    it("handles multiple diagnostics in single payload", function()
      vim.lsp.get_client_by_id = function(id)
        if id == 1 then
          return { name = "typescript-tools" }
        end
        return nil
      end

      local result = {
        uri = "file:///test.ts",
        diagnostics = {
          {
            code = 2322,
            message = "Type 'string' is not assignable to type 'number'.",
            range = { start = { line = 0, character = 0 }, ["end"] = { line = 0, character = 10 } },
          },
          {
            code = 2339,
            message = "Property 'foo' does not exist on type 'Bar'.",
            range = { start = { line = 1, character = 0 }, ["end"] = { line = 1, character = 10 } },
          },
          {
            code = 9999,
            message = "Unknown error.",
            range = { start = { line = 2, character = 0 }, ["end"] = { line = 2, character = 10 } },
          },
        },
      }
      local ctx = { client_id = 1 }

      diagnostic_module.setup({ servers = { "typescript-tools" } })

      local handler = vim.lsp.handlers["textDocument/publishDiagnostics"]
      handler(nil, result, ctx, nil)

      -- First diagnostic should be translated
      assert.is_true(string.find(result.diagnostics[1].message, "I was expecting") ~= nil)
      -- Second diagnostic should be translated
      assert.is_true(string.find(result.diagnostics[2].message, "trying to access") ~= nil)
      -- Third diagnostic should remain unchanged (no match)
      assert.equals("Unknown error.", result.diagnostics[3].message)
    end)

    it("supports multiple server names", function()
      vim.lsp.get_client_by_id = function(id)
        if id == 1 then
          return { name = "tsserver" }
        elseif id == 2 then
          return { name = "typescript-tools" }
        end
        return nil
      end

      local result1 = {
        uri = "file:///test1.ts",
        diagnostics = {
          {
            code = 2322,
            message = "Type 'string' is not assignable to type 'number'.",
            range = { start = { line = 0, character = 0 }, ["end"] = { line = 0, character = 10 } },
          },
        },
      }
      local result2 = {
        uri = "file:///test2.ts",
        diagnostics = {
          {
            code = 2322,
            message = "Type 'boolean' is not assignable to type 'string'.",
            range = { start = { line = 0, character = 0 }, ["end"] = { line = 0, character = 10 } },
          },
        },
      }

      diagnostic_module.setup({ servers = { "typescript-tools", "tsserver" } })

      local handler = vim.lsp.handlers["textDocument/publishDiagnostics"]

      -- Both should be translated
      handler(nil, result1, { client_id = 1 }, nil)
      handler(nil, result2, { client_id = 2 }, nil)

      assert.is_true(string.find(result1.diagnostics[1].message, "I was expecting") ~= nil)
      assert.is_true(string.find(result2.diagnostics[1].message, "I was expecting") ~= nil)
    end)
  end)
end)
