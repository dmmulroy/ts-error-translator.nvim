-- Module M is the public API available for ts-error-translator.nvim
local M = {}

-- Regex pattern for capturing numbered parameters like {0}, {1}, etc.
local parameter_regex = "({%d})"

-- Extracts parameter placeholders from a given error template.
-- @param error_template string: The template string containing parameter placeholders.
-- @return table: A list of all parameter placeholders found in the template.
local function get_params(error_template)
  print("get_params - error_template: " .. error_template)
  local params = {}
  for param in error_template:gmatch(parameter_regex) do
    print("get_params - param: " .. param)
    table.insert(params, param)
  end
  return params
end

-- Extracts quoted strings from a given message.
-- @param message string: The message string containing quoted parts.
-- @return table: A list of all quoted strings found in the message.
local function get_matches(message)
  print("get_matches - message: " .. message)
  local matches = {}

  for match in string.gmatch(message, "'(.-)'") do
    print("get_matches - match: " .. match)
    table.insert(matches, match)
  end

  return matches
end

--[[
translate_error_message - error_msg: Type 'string | undefined' is not assignable to type 'boolean'.
  Type 'undefined' is not assignable to type 'boolean'.
translate_error_message - error_template: Type '{0}' is not assignable to type '{1}'.
translate_error_message - translated_error_template: I was expecting a type matching '{1}', but instead you passed '{0}'.

  get_matches - message: Type 'string | undefined' is not assignable to type 'boolean'.
    Type 'undefined' is not assignable to type 'boolean'.
  get_matches - match: string | undefined
  get_matches - match: boolean
  get_matches - match: undefined
  get_matches - match: boolean

translate_error_message - matches: { "string | undefined", "boolean", "undefined", "boolean" }
  get_params - error_template: Type '{0}' is not assignable to type '{1}'.
  get_params - param: {0}
  get_params - param: {1}

translate_error_message - params: { "{0}", "{1}" }
translate_error_message - (pre)translated_error: I was expecting a type matching '{1}', but instead you passed '{0}'.
translate_error_message - (post)translated_error: I was expecting a type matching 'boolean', but instead you passed 'string | undefined'.
]]

function split_on_new_line(s)
  local lines = {}
  for line in s:gmatch("[^\r\n]+") do
    table.insert(lines, line:match("^%s*(.-)%s*$"))
  end
  return lines
end

-- Constructs a translated error message by replacing placeholders in the template with actual values.
-- @param error_msg string: The original error message.
-- @param error_template string: The error template with placeholders.
-- @param translated_error_template string: The translated error message template.
-- @return string: The translated error message, or original if replacement isn't possible.
local function translate_error_message(error_msg, error_template, translated_error_template)
  print("translate_error_message - split_string: " .. vim.inspect(split_on_new_line(error_msg)))
  print("translate_error_message - error_msg: " .. error_msg)
  print("translate_error_message - error_template: " .. error_template)
  print("translate_error_message - translated_error_template: " .. translated_error_template)
  local matches = get_matches(error_msg)
  print("translate_error_message - matches: " .. vim.inspect(matches))
  local params = get_params(error_template)
  print("translate_error_message - params: " .. vim.inspect(params))

  local translated_error = translated_error_template

  print("translate_error_message - (pre)translated_error: " .. translated_error)
  for i = 1, #params do
    translated_error = translated_error:gsub(params[i], matches[i])
  end
  print("translate_error_message - (post)translated_error: " .. translated_error)

  return translated_error
end

-- Retrieves a markdown file associated with a specific error number.
-- @param error_num string: The error number identifier.
-- @return file* | nil: The file pointer to the markdown file, if exists.
local function get_error_markdown_file(error_num)
  print("get_error_markdown_file - error_num: " .. error_num)
  if error_num == nil then
    return nil
  end
  -- /Users/dmmulroy/Code/personal/ts-error-translator.nvim/lua/ts-error-translator
  local filename = error_num .. ".md"
  local plugin_path = vim.fn.fnamemodify(debug.getinfo(1).source:sub(2), ":p:h")
  local filepath = plugin_path .. "/error_templates/" .. filename
  print("get_error_markdown_file - filepath: " .. filepath)

  local markdown_file = io.open(filepath, "r")
  return markdown_file
end

-- Parses a markdown file to extract 'original' and 'translated' content.
-- @param markdown file*: The markdown file pointer.
-- @return table: A table with 'original' and 'translated' keys containing extracted contents.
local function parse_markdown(markdown)
  local contents = markdown:read("*all")
  markdown:close()

  print("parse_markdown - contents: " .. contents)

  -- First, remove the leading and trailing '---'
  local trimmed_markdown = contents:gsub("^%-%-%-%s*", ""):gsub("%s*%-%-%-$", "")

  -- Split the remaining content at the '---' separator
  local original_content, translated_content = trimmed_markdown:match("^(.-)%s*%-%-%-%s*(.-)$")

  -- Trim whitespace from both contents
  original_content = original_content:gsub('^original:%s*"(.-)"%s*$', "%1")
  translated_content = translated_content:gsub("^%s*(.-)%s*$", "%1")

  print("parse_markdown - original_content: " .. original_content)
  print("parse_markdown - translated_content: " .. translated_content)

  -- Return the table with the extracted contents
  return {
    original = original_content,
    translated = translated_content,
  }
end

-- Attempt to translate a given compiler message into a translated one.
-- @param code number: The original compiler error number.
-- @param message string: The original compiler message to parse.
-- @return string: The translated or original error message.
M.translate = function(code, message)
  local improved_text_file = get_error_markdown_file(code)

  if improved_text_file == nil then
    return message
  end

  local parsed = parse_markdown(improved_text_file)

  local params = get_params(parsed["original"])

  if #params == 0 then
    return message
  end

  local translated_error = translate_error_message(message, parsed["original"], parsed["translated"])

  return translated_error
end

local function get_lsp_client_name_by_id(client_id)
  local client = vim.lsp.get_client_by_id(client_id)
  local client_name = client and client.name or "unknown"
  return client_name
end

M.lsp_publish_diagnostics_override = function(_, result, ctx, config)
  local client_name = get_lsp_client_name_by_id(ctx.client_id)

  if client_name == "tsserver" then
    local updated_diagnostics = {}

    for idx, diagnostic in ipairs(result.diagnostics) do
      print("lsp_publish_diagnostics_override diagnostic " .. idx .. ": " .. vim.inspect(diagnostic))
      diagnostic.message = M.translate(diagnostic.code, diagnostic.message)

      table.insert(updated_diagnostics, diagnostic)
    end
    result.diagnostics = updated_diagnostics
  end

  vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
end

local DEFAULT_CONFIG = {
  auto_override_publish_diagnostics = true,
}

local config = {}

M.setup = function(opts)
  config = vim.tbl_deep_extend("force", config, DEFAULT_CONFIG, opts or {})

  if config.auto_override_publish_diagnostics == true then
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(M.lsp_publish_diagnostics_override, {})
  end
end

-- Returning the module M
return M
