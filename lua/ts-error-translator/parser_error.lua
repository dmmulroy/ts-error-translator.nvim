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
