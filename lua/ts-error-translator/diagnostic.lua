---@diagnostic disable: undefined-global
local M = {}

---Retrieves the name of an LSP client given its client ID
---@param client_id number The ID of the LSP client
---@return string The name of the LSP client, or "unknown" if not found
local function get_lsp_client_name_by_id(client_id)
  local client = vim.lsp.get_client_by_id(client_id)
  local client_name = client and client.name or "unknown"
  return client_name
end

---Translate diagnostic message using error code
---@param message string Original diagnostic message
---@param code? number|string TypeScript error code
---@return string Translated message or original if no translation available
local function translate_diagnostic_message(message, code)
  -- If we have a code, prepend it to the message for parsing
  local message_with_code = code and ("TS" .. tostring(code) .. ": " .. message) or message
  local parsed = require("ts-error-translator.parser").parse_errors(message_with_code)
  if #parsed > 0 and parsed[1].improvedError then
    return parsed[1].improvedError.body
  end
  return message
end

---@class DiagnosticConfig
---@field servers string[] LSP server names to translate diagnostics for

---Setup diagnostic translation by overriding LSP publishDiagnostics handler
---@param opts DiagnosticConfig
function M.setup(opts)
  -- Override LSP publishDiagnostics handler
  local original_publish_diagnostics = vim.lsp.handlers["textDocument/publishDiagnostics"]

  vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
    if result and result.diagnostics then
      local client_name = get_lsp_client_name_by_id(ctx.client_id)

      if vim.tbl_contains(opts.servers, client_name) then
        for _, diag in ipairs(result.diagnostics) do
          if diag.message then
            diag.message = translate_diagnostic_message(diag.message, diag.code)
          end
        end
      end
    end

    return original_publish_diagnostics(err, result, ctx, config)
  end
end

return M
