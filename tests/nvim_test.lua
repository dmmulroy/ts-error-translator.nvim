-- Run this test with: nvim --headless -u NONE -c "lua dofile('tests/nvim_test.lua')"

-- Setup path
package.path = "./lua/?.lua;./lua/?/init.lua;" .. package.path

local parser = require("ts-error-translator.parser")

-- Test cases
local tests = {
  {
    name = "Property does not exist",
    message = "error TS2339: Property 'foo' does not exist on type 'Bar'.",
    expected_code = 2339,
    expected_items = 2
  },
  {
    name = "Type not assignable",
    message = "error TS2322: Type 'string' is not assignable to type 'number'.",
    expected_code = 2322,
    expected_items = 2
  },
  {
    name = "Unterminated string",
    message = "error TS1002: Unterminated string literal.",
    expected_code = 1002
    -- No expected_items check since pattern has no parameters
  },
  {
    name = "Multiple errors in one message",
    message = "error TS2339: Property 'foo' does not exist on type 'Bar'. error TS2322: Type 'string' is not assignable to type 'number'.",
    expected_count = 2
  },
  {
    name = "No error code in message",
    message = "Property 'foo' does not exist on type 'Bar'.",
    expected_count = 0
  }
}

print("Running Neovim tests with real vim.regex...")
print("")

local passed = 0
local failed = 0

for i, test in ipairs(tests) do
  print("Test " .. i .. ": " .. test.name)
  print("  Input: " .. test.message)

  local success, results = pcall(parser.parse_errors, test.message)

  if not success then
    print("  ❌ FAILED: Error during parsing: " .. tostring(results))
    failed = failed + 1
  else
    local test_passed = true
    local error_msg = ""

    -- Check expected count if specified
    if test.expected_count then
      if #results ~= test.expected_count then
        test_passed = false
        error_msg = "Expected " .. test.expected_count .. " results, got " .. #results
      end
    end

    -- Check expected code if specified
    if test_passed and test.expected_code then
      if #results == 0 then
        test_passed = false
        error_msg = "No results found"
      elseif results[1].code ~= test.expected_code then
        test_passed = false
        error_msg = "Expected code " .. test.expected_code .. ", got " .. results[1].code
      end
    end

    -- Check expected items if specified
    if test_passed and test.expected_items and #results > 0 then
      if #results[1].parseInfo.items ~= test.expected_items then
        test_passed = false
        error_msg = "Expected " .. test.expected_items .. " items, got " .. #results[1].parseInfo.items
      end
    end

    if test_passed then
      print("  ✅ PASSED")
      if #results > 0 and results[1].improvedError then
        local preview = results[1].improvedError.body:sub(1, 60):gsub("\n", " ")
        print("  Improved: " .. preview .. "...")
      end
      passed = passed + 1
    else
      print("  ❌ FAILED: " .. error_msg)
      failed = failed + 1
    end
  end

  print("")
end

print("Results: " .. passed .. " passed, " .. failed .. " failed")
print("")

if failed > 0 then
  vim.cmd('cquit 1')
else
  vim.cmd('quitall!')
end
