local db_errors = require("ts-error-translator.db")
local matcher = require("ts-error-translator.matcher")
local utils = require("ts-error-translator.utils")
local lru = require("ts-error-translator.lru")

local cache = lru.new(100)

local M = {}

local ERROR_FALLBACK_MESSAGE = [[• Something went wrong while translating your error. Please file an issue at https://github.com/dmmulroy/ts-error-translator.nvim and an example of the code that caused this error.
]]

-- Extract TS error codes from message (e.g., "error TS2707:" -> 2707)
local function extract_error_codes(message)
  local codes = {}
  -- Match TS followed by digits (case insensitive)
  for code in message:gmatch("[Tt][Ss](%d+)") do
    table.insert(codes, tonumber(code))
  end
  return codes
end

local function parse_errors_impl(message)
  local cached = lru.get(cache, message)
  if cached then
    return cached
  end

  local results = {}

  -- Extract error codes from message
  local codes = extract_error_codes(message)

  if #codes == 0 then
    -- No codes found, return empty
    lru.set(cache, message, results)
    return results
  end

  -- O(1) lookup for each code
  for _, code in ipairs(codes) do
    local error_info = db_errors[code]

    if error_info then
      local m = matcher.get_diagnostic_matcher(error_info.pattern)

      -- Try to match pattern in message to extract parameters
      local s, e = m.regex:match_str(message, 0)

      if s then
        local raw_error = message:sub(s + 1, e)
        -- Trim whitespace from raw_error
        raw_error = raw_error:match("^%s*(.-)%s*$")

        -- vim.regex doesn't return captures, so extract manually
        -- Build a Lua pattern from the original pattern to extract params

        -- Extract parameter placeholders in order (e.g., {0}, {1}, {1}, {2})
        local params = {}
        for param in error_info.pattern:gmatch("{%d}") do
          table.insert(params, param)
        end

        local lua_pattern = error_info.pattern
        -- Escape special Lua pattern chars (curly braces are not Lua special chars)
        lua_pattern = lua_pattern:gsub("([%.%+%-%*%?%[%]%^%$%(%)%%])", "%%%1")
        -- Replace {N} placeholders with capture groups
        -- For quoted params like '{0}', use non-quote matching to avoid going past closing quote
        -- For non-quoted params, use greedy matching (safe since not bounded by quotes)
        lua_pattern = lua_pattern:gsub("'{%d}'", "'([^']+)'")
        lua_pattern = lua_pattern:gsub("{%d}", "(.+)")

        -- Extract captures from the matched text
        local items = {}
        if #params > 0 then
          local captures = { raw_error:match(lua_pattern) }
          -- Trim whitespace from captures
          for i, capture in ipairs(captures) do
            if type(capture) == "string" then
              captures[i] = capture:match("^%s*(.-)%s*$")
            end
          end
          -- Deduplicate params (e.g., {0}, {1}, {1} -> use only first occurrence of each)
          items = utils.associate_matched_parameters(params, captures)
        end

        local result = {
          code = code,
          error = error_info.pattern,
          category = error_info.category,
          parseInfo = {
            rawError = raw_error,
            startIndex = s,
            endIndex = e,
            items = items,
          },
        }

        if error_info.improved_message then
          result.improvedError = utils.fill_body_with_items(error_info.improved_message, items)
        end

        table.insert(results, result)
      end
    end
  end

  -- Sort by position
  table.sort(results, function(a, b)
    return a.parseInfo.startIndex < b.parseInfo.startIndex
  end)

  lru.set(cache, message, results)
  return results
end

function M.parse_errors(message)
  local success, result = pcall(parse_errors_impl, message)

  if not success then
    -- Return error fallback message with original error prepended
    return {
      {
        code = -1,
        error = "Translation Error",
        category = "Error",
        parseInfo = {
          rawError = message,
          startIndex = 0,
          endIndex = #message,
          items = {},
        },
        improvedError = {
          body = message .. "\n" .. ERROR_FALLBACK_MESSAGE,
        },
      },
    }
  end

  return result
end

return M
