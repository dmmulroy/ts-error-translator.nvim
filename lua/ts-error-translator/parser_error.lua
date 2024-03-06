--[[ {
-- error_db format
  local error_db = {
    ["error_template"] = {
      category = "",
      code = 0
    }
} ]]
local error_db = require('error_db')

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

local function parse_errors(message)
  local error_message_by_key = {}

  -- error_db_keys are error templates 
  -- (e.g. "'{0}' and '{1}' index signatures are incompatible.")
  local error_db_keys = vim.tbl_keys(error_db)

  for _, value in ipairs(error_db_keys) do
    
  end
end

local function getDiagnositcMatcher(error_db_key) 
  local existing_matcher == diagnostic_map[error_db_key]

  if existing_matcher ~= nil then
    return existing_matcher
  end


end
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

local parameters = string.gmatch(msg, parameter_regex)

local function iterator_to_table(iterator)
  local tbl = {}
  for match in iterator do
    print("match:" .. match)
    if match ~= nil then
      table.insert(tbl, match)
    end
  end

  return tbl
end

