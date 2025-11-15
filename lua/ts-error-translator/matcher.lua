---@diagnostic disable: undefined-global
local utils = require("ts-error-translator.utils")

---@type table<string, DiagnosticMatcher>
local cache = {}

local M = {}

---@class DiagnosticMatcher
---@field regex any Compiled regex for matching diagnostic messages
---@field parameters string[] Extracted parameter placeholders (e.g., {"{0}", "{1}"})

---Get or create cached diagnostic matcher for pattern
---@param pattern string Error pattern with {N} placeholders
---@return DiagnosticMatcher
function M.get_diagnostic_matcher(pattern)
  if cache[pattern] then
    return cache[pattern]
  end

  local escaped = utils.escape_regexp(pattern)
  local regex_pattern = escaped:gsub("\\{(%d)\\}", "(.+)")
  local regex = vim.regex("\\v" .. regex_pattern)

  local parameters = {}
  for param in pattern:gmatch("{(%d)}") do
    table.insert(parameters, "{" .. param .. "}")
  end

  cache[pattern] = {
    regex = regex,
    parameters = parameters,
  }

  return cache[pattern]
end

return M
