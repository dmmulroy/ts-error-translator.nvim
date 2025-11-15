local M = {}

---@class ImprovedError
---@field body string

---Escape special chars for vim.regex \v very magic mode
---@param str string
---@return string
---@return number
function M.escape_regexp(str)
  -- Escape special chars for vim.regex \v very magic mode
  return str:gsub("[%(%)%[%]%{%}%*%+%?%.%^%$%|\\]", "\\%1")
end

---Associate matched parameters with unique params, deduplicating by first occurrence
---@param params string[] Array of parameter placeholders (e.g., {"{0}", "{1}", "{1}"})
---@param matched string[] Array of matched values from regex captures
---@return string[] Deduplicated array of matched values
function M.associate_matched_parameters(params, matched)
  local result = {}
  local seen = {}
  for i, param in ipairs(params) do
    if not seen[param] and matched[i] then
      seen[param] = true
      table.insert(result, matched[i])
    end
  end
  return result
end

---Fill message body template with extracted items
---@param body string Template string with {N} placeholders
---@param items string[] Values to substitute into template
---@return ImprovedError
function M.fill_body_with_items(body, items)
  for i, item in ipairs(items) do
    local idx = i - 1 -- 0-indexed in templates
    body = body:gsub("'?{" .. idx .. "}'?", "`" .. tostring(item) .. "`")
  end
  return { body = body }
end

return M
