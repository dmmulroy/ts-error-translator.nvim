local utils = require("ts-error-translator.utils")
local cache = {}

local M = {}

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
