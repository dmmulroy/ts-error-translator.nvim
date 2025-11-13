-- Run with: nvim --headless -c "PlenaryBustedDirectory tests/spec/"

-- Setup path
package.path = "./lua/?.lua;./lua/?/init.lua;" .. package.path

local utils = require("ts-error-translator.utils")

describe("fill_body_with_items", function()
  it("handles both {0} and '{1}' formats", function()
    local result = utils.fill_body_with_items("{0} and '{1}'", { "A", "B" })
    assert.are.same({ body = "`A` and `B`" }, result)
  end)

  it("handles only quoted params", function()
    local result = utils.fill_body_with_items("'{0}' is not assignable to '{1}'", { "string", "number" })
    assert.are.same({ body = "`string` is not assignable to `number`" }, result)
  end)

  it("handles only non-quoted params", function()
    local result = utils.fill_body_with_items("Expected {0} arguments, but got {1}", { "2", "3" })
    assert.are.same({ body = "Expected `2` arguments, but got `3`" }, result)
  end)

  it("handles no params", function()
    local result = utils.fill_body_with_items("This is a plain message", {})
    assert.are.same({ body = "This is a plain message" }, result)
  end)

  it("handles multiple instances of same param index", function()
    local result = utils.fill_body_with_items("{0} refers to {0}", { "Foo" })
    assert.are.same({ body = "`Foo` refers to `Foo`" }, result)
  end)
end)
