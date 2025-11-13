-- Run with: nvim --headless -c "PlenaryBustedDirectory tests/spec/"

-- Setup path
package.path = "./lua/?.lua;./lua/?/init.lua;" .. package.path

local parser = require("ts-error-translator.parser")

describe("parseErrors", function()
  describe("edge cases", function()
    it("should catch multiple of the same error", function()
      local errors = parser.parse_errors([[
        error TS2326: Types of property 'URL_NAVIGATION' are incompatible.
        error TS2326: Types of property 'actions' are incompatible.
      ]])

      assert.equals(2, #errors)
      assert.equals(2326, errors[1].code)
      assert.equals(2326, errors[2].code)
    end)

    it("should match variadic arguments for quoted types and non-quoted values", function()
      local input = [[
        error TS2304: Cannot find name 'React'.
        error TS2314: Generic type 'Promise' requires 1 type argument(s).
        error TS2739: Type 'B' is missing the following properties from type 'A': two, three
      ]]
      local errors = parser.parse_errors(input)

      assert.equals(3, #errors)

      -- First error: TS2304 (1 param)
      assert.equals(2304, errors[1].code)
      assert.equals("Cannot find name '{0}'.", errors[1].error)
      assert.are.same({ "React" }, errors[1].parseInfo.items)
      assert.equals("Cannot find name 'React'.", errors[1].parseInfo.rawError)

      -- Second error: TS2314 (2 params)
      assert.equals(2314, errors[2].code)
      assert.equals("Generic type '{0}' requires {1} type argument(s).", errors[2].error)
      assert.are.same({ "Promise", "1" }, errors[2].parseInfo.items)
      assert.equals("Generic type 'Promise' requires 1 type argument(s).", errors[2].parseInfo.rawError)

      -- Third error: TS2739 (3 params)
      assert.equals(2739, errors[3].code)
      assert.equals("Type '{0}' is missing the following properties from type '{1}': {2}", errors[3].error)
      assert.are.same({ "B", "A", "two, three" }, errors[3].parseInfo.items)
      assert.equals(
        "Type 'B' is missing the following properties from type 'A': two, three",
        errors[3].parseInfo.rawError
      )
    end)

    it("should handle cases where there are no params", function()
      local errors = parser.parse_errors("error TS1002: Unterminated string literal.")

      assert.equals(1, #errors)
      assert.equals(1002, errors[1].code)
      assert.are.same({}, errors[1].parseInfo.items)
    end)

    it("should handle multiple errors in one message", function()
      local message =
        "error TS2339: Property 'foo' does not exist on type 'Bar'. error TS2322: Type 'string' is not assignable to type 'number'."
      local errors = parser.parse_errors(message)

      assert.equals(2, #errors)
      assert.equals(2339, errors[1].code)
      assert.are.same({ "foo", "Bar" }, errors[1].parseInfo.items)
      assert.equals(2322, errors[2].code)
      assert.are.same({ "string", "number" }, errors[2].parseInfo.items)
    end)

    it("should return empty array when no error codes found", function()
      local errors = parser.parse_errors("Property 'foo' does not exist on type 'Bar'.")

      assert.equals(0, #errors)
    end)

    it("should handle errors sorted by position", function()
      local message = [[
        error TS2322: Type 'string' is not assignable to type 'number'.
        error TS2339: Property 'foo' does not exist on type 'Bar'.
      ]]
      local errors = parser.parse_errors(message)

      assert.equals(2, #errors)
      -- Should be sorted by startIndex
      assert.is_true(errors[1].parseInfo.startIndex < errors[2].parseInfo.startIndex)
    end)
  end)

  describe("improved messages", function()
    it("should generate improved error messages with filled params", function()
      local errors = parser.parse_errors("error TS2339: Property 'foo' does not exist on type 'Bar'.")

      assert.equals(1, #errors)
      assert.is_not_nil(errors[1].improvedError)
      assert.is_not_nil(errors[1].improvedError.body)
      -- TS2339 improved message only uses {0}, so only check for 'foo'
      assert.is_true(string.find(errors[1].improvedError.body, "`foo`") ~= nil)
    end)

    it("should handle errors without improved messages", function()
      -- Test with an error that might not have an improved message
      local errors = parser.parse_errors("error TS9999: Some unknown error.")

      -- Should either return empty or handle gracefully
      assert.is_true(#errors == 0 or errors[1].improvedError == nil)
    end)
  end)
end)
