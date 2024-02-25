-- Module M is the public API available for ts-error-translator.nvim
local M = {}

-- Regex pattern for capturing numbered parameters like {0}, {1}, etc.
local parameter_regex = "({%d})"

-- Extracts parameter placeholders from a given error template.
-- @param error_template string: The template string containing parameter placeholders.
-- @return table: A list of all parameter placeholders found in the template.
local function get_params(error_template)
  local params = {}
  for param in error_template:gmatch(parameter_regex) do
    table.insert(params, param)
  end
  return params
end

-- Extracts quoted strings from a given message.
-- @param message string: The message string containing quoted parts.
-- @return table: A list of all quoted strings found in the message.
local function get_matches(message)
  local matches = {}

  for match in string.gmatch(message, "'(.-)'") do
    table.insert(matches, match)
  end

  return matches
end

-- Constructs a translated error message by replacing placeholders in the template with actual values.
-- @param error_msg string: The original error message.
-- @param error_template string: The error template with placeholders.
-- @param translated_error_template string: The translated error message template.
-- @return string: The translated error message, or original if replacement isn't possible.
local function translate_error_message(error_msg, error_template, translated_error_template)
  local matches = get_matches(error_msg)
  local params = get_params(error_template)

  if #params ~= #matches then
    return error_msg
  end

  local translated_error = translated_error_template

  for i = 1, #params do
    translated_error = translated_error:gsub(params[i], matches[i])
  end

  return translated_error
end

-- Retrieves a markdown file associated with a specific error number.
-- @param error_num string: The error number identifier.
-- @return file* | nil: The file pointer to the markdown file, if exists.
local function get_error_markdown_file(error_num)
  local filename = error_num .. ".md"
  local plugin_path = vim.fn.fnamemodify(debug.getinfo(1).source:sub(2), ":p:h")
  return io.open(plugin_path .. "./error_templates/" .. filename, "r")
end

-- Parses a markdown file to extract 'original' and 'translated' content.
-- @param markdown file*: The markdown file pointer.
-- @return table: A table with 'original' and 'translated' keys containing extracted contents.
local function parse_md(markdown)
  local contents = markdown:read("*all")
  markdown:close()

  -- First, remove the leading and trailing '---'
  local trimmed_markdown = contents:gsub("^%-%-%-%s*", ""):gsub("%s*%-%-%-$", "")

  -- Split the remaining content at the '---' separator
  local original_content, translated_content = trimmed_markdown:match("^(.-)%s*%-%-%-%s*(.-)$")

  -- Trim whitespace from both contents
  original_content = original_content:gsub('^original:%s*"(.-)"%s*$', "%1")
  translated_content = translated_content:gsub("^%s*(.-)%s*$", "%1")

  -- Return the table with the extracted contents
  return {
    original = original_content,
    translated = translated_content,
  }
end

-- Attempt to translate a given compiler message into a translated one.
-- @param message string: The original compiler message to parse.
-- @return string: The improved or original error message.
M.translate = function(message)
  local error_num, original_message = message:match("^.*TS(%d+):%s(.*)")
  local improved_text_file = get_error_markdown_file(error_num)
  if improved_text_file == nil then
    return message
  end

  local parsed = parse_md(improved_text_file)

  local params = get_params(parsed["original"])

  if #params == 0 then
    return "TS" .. error_num .. ": " .. parsed.body
  end

  local translated_error = translate_error_message(original_message, parsed["original"], parsed["translated"])

  return "TS" .. error_num .. ": " .. translated_error
end

local function get_lsp_client_name_by_id(client_id)
  local client = vim.lsp.get_client_by_id(client_id)
  local client_name = client and client.name or "unknown"
  return client_name
end
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(

local PUBLISH_DIAGNOSTICS_CONFIG = {
  format = function(message)
    return M.translate(message)
  end,
}

M.lsp_publish_diagnostics_override = function(_, result, ctx, config)
  local final_config = config
  local client_name = get_lsp_client_name_by_id(ctx.client_id)

  if client_name == "tsserver" then
    final_config = vim.tbl_deep_extend("force", final_config, PUBLISH_DIAGNOSTICS_CONFIG)
  end

  vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, final_config)
end

local DEFAULT_CONFIG = {
  auto_override_publish_diagnostics = true,
}

local config = {}

M.setup = function(opts)
  config = vim.tbl_deep_extend("force", config, DEFAULT_CONFIG, opts or {})

  if config.auto_override_publish_diagnostics == true then
    vim.lsp.handlers["textDocument/publishDiagnostics"] = M.lsp_publish_diagnostics_override
  end
end

-- Returning the module M
return M
