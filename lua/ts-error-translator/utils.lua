local M = {}

function M.escape_regexp(str)
  -- Escape special chars for vim.regex \v very magic mode
  return str:gsub("[%(%)%[%]%{%}%*%+%?%.%^%$%|\\]", "\\%1")
end

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

function M.fill_body_with_items(body, items)
  for i, item in ipairs(items) do
    local idx = i - 1 -- 0-indexed in templates
    body = body:gsub("'?{" .. idx .. "}'?", "`" .. tostring(item) .. "`")
  end
  return { body = body }
end

return M
