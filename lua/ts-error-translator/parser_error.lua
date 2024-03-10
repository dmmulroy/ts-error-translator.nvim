--[[ {
-- error_db format
  local error_db = {
    ["error_template"] = {
      category = "",
      code = 0
    }
} ]]
local error_db = require("error_db")

--[[
  interface TSDiagnosticMatcher {
    regexGlobal: RegExp;
    regexLocal: RegExp;
    parameters: string[];
  }

  local diagnostic_map = {
    [key(?)] = TSDiagnosticMatcher
  }
]]
local diagnostic_map = {}

-- Regex pattern for capturing numbered parameters like {0}, {1}, etc.
local parameter_regex = "({%d})"

local function print_table(tbl)
  for key, value in pairs(tbl) do
    print(key, value)
  end
end

local msg = "'{0}' and '{1}' index signatures are incompatible."
local escaped_message = "'(.+)' and '(.+)' index signatures are incompatible\\."

local escape_regex = "[%*%+%?%^%$%(%)%{%}%|%[%]%%\\%.]"
local parameter_regex = "'%{%d%}'"
local escaped_parameter_regex = "\\\\{%d\\\\}"

local function run_escape_regex(str)
  return string.gsub(str, escape_regex, function(match)
    return "\\\\" .. match
  end)
end

local function create_regex_source(str)
  local escaped_str = run_escape_regex(str)
  return string.gsub(escaped_str, escaped_parameter_regex, "(.+)")
end

-- local parameters = string.gmatch(msg, parameter_regex)

local function iterator_to_table(iterator)
  local tbl = {}
  for match in iterator do
    if match ~= nil then
      table.insert(tbl, match)
    end
  end

  return tbl
end

local function local_match(str, pattern)
  return string.match(str, pattern)
end

local function make_local_match(pattern)
  return function(str)
    local_match(str, pattern)
  end
end

local function global_match(str, pattern)
  local matches = {}
  for match in string.gmatch(str, pattern) do
    table.insert(matches, match)
  end

  return matches
end

local function make_global_match(pattern)
  return function(str)
    global_match(str, pattern)
  end
end

local function getDiagnositcMatcher(key)
  local existing = diagnostic_map[key]

  if existing ~= nil then
    return existing
  end

  local regex_source = create_regex_source(key)
  local regex_local = make_local_match(regex_source)
  local regex_global = make_global_match(regex_source)
  local paremeters = global_match(key, parameter_regex)

  local diagnostic_matcher = { paremeters, regex_local, regex_global }

  diagnostic_map[key] = diagnostic_matcher

  return diagnostic_matcher
end

local function associateMatchedParameters(parameters, matchedParams)
  local params = {}

  for idx, matchedParam in ipairs(matchedParams) do
    local parameter = parameters[idx]

    if params[parameter] == nil then
      params[parameter] = matchedParam
    end
  end

  return vim.tbl_keys(params)
end

local function parse_errors(message)
  local error_message_by_key = {}

  -- error_db_keys are error templates
  -- (e.g. "'{0}' and '{1}' index signatures are incompatible.")
  local error_db_keys = vim.tbl_keys(error_db)

  for _, key in ipairs(error_db_keys) do
    local diagnostic_matcher = getDiagnositcMatcher(key)

    local global_matches = diagnostic_matcher.global_match(key)

    for match in global_matches do
      local start_idx, end_idx = string.find(key, match)
      local error_messages_key = start_idx .. "_" .. end_idx

      local items = associateMatchedParameters(diagnostic_matcher.parameters, diagnostic_matcher.local_matches(key))

      local error_object = {
        code = error_db[key].code,
        error = key,
        parse_info = {
          raw_error = match,
          start_idx,
          end_idx,
          items,
        },
      }

      if error_message_by_key[error_messages_key] ~= nil then
        local existing_rule = error_message_by_key[error_messages_key]

        local existing_error_length = #existing_rule.error
        local new_error_length = #key

        if new_error_length > existing_error_length then
          error_message_by_key[error_messages_key] = error_object
        end
      else
        error_message_by_key[error_messages_key] = error_object
      end

      -- TODO: sort table values by start_idx
    end
  end
end
