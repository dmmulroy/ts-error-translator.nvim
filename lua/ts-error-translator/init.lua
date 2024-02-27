-- Module M is the public API available for ts-error-translator.nvim
local M = {}

-- All language servers that are supported
local supported_servers = { "tsserver", "typescript-tools", "vtsls", "volar" }

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

-- Splits a string into a list of lines.
-- @param s string: The string to be split.
-- @return table: A list of lines extracted from the input string.
local function split_on_new_line(s)
  local lines = {}
  for line in s:gmatch("[^\r\n]+") do
    table.insert(lines, line:match("^%s*(.-)%s*$"))
  end
  return lines
end

-- Constructs a translated error message by replacing placeholders in the template with actual values.
-- @param error_msg string: The original error message.
-- @param translated_error_template string: The translated error message template.
-- @param params table: The list of parameters to replace in the translated error message.
-- @return string: The translated error message, or original if replacement isn't possible.
local function translate_error_message(error_message, translated_error_template, params)
  local final_error = error_message .. "\n\n" .. "TypeScript Error Translation(s):\n"

  local error_messages = split_on_new_line(error_message)

  for _, msg in ipairs(error_messages) do
    local matches = get_matches(msg)

    -- If there is an error parsing the matches just return the initial error
    -- a message to create an issue
    if #params > 0 and #params ~= #matches then
      return error_message
        .. "\n\n"
        .. "TypeScript Error Translation(s):\n"
        .. "  • Something went wrong while translating your error. Please file an issue at https://github.com/dmmulroy/ts-error-translator.nvim and an example of the code that caused this error.\n"
    end

    local translated_error = translated_error_template

    for i = 1, #params do
      translated_error = translated_error:gsub(params[i], matches[i])
    end

    final_error = final_error .. "  • " .. translated_error .. "\n"
  end

  return final_error
end

-- Attempt to translate a given compiler message into a translated one.
-- @param code number: The original compiler error number.
-- @param message string: The original compiler message to parse.
-- @return string: The translated or original error message.
M.translate = function(diagnostic)
  local translation_avail, translation =
    pcall(require, ("ts-error-translator.error_templates.%d"):format(diagnostic.code))

  if translation_avail then
    local params = get_params(translation.original)
    diagnostic.message = translate_error_message(diagnostic.message, translation.translated, params)
  end

  return diagnostic
end

-- Retrieves the name of an LSP client given its client ID.
-- @param client_id number: The ID of the LSP client.
-- @return string: The name of the LSP client, or "unknown" if the client is not found.
local function get_lsp_client_name_by_id(client_id)
  local client = vim.lsp.get_client_by_id(client_id)
  local client_name = client and client.name or "unknown"
  return client_name
end

-- Overrides the default LSP publishDiagnostics handler to translate diagnostics for TypeScript (tsserver).
-- @param _ Unused parameter.
-- @param result any: The diagnostics result object.
-- @param ctx lsp.HandlerContext: The context object containing LSP client information.
-- @param _ Unused parameter.
M.translate_diagnostics = function(_, result, ctx, _)
  local client_name = get_lsp_client_name_by_id(ctx.client_id)

  if vim.tbl_contains(supported_servers, client_name) then
    vim.tbl_map(M.translate, result.diagnostics)
  end
end

local DEFAULT_CONFIG = {
  auto_override_publish_diagnostics = true,
}

local config = {}

-- Sets up the module with user-provided options.
-- @param opts table: A table of user options to configure the module.
M.setup = function(opts)
  config = vim.tbl_deep_extend("force", config, DEFAULT_CONFIG, opts or {})

  if config.auto_override_publish_diagnostics == true then
    local publish_diagnostics_handler = vim.lsp.handlers["textDocument/publishDiagnostics"]
    vim.lsp.handlers["textDocument/publishDiagnostics"] = function(...)
      M.translate_diagnostics(...)
      publish_diagnostics_handler(...)
    end
  end
end

-- Returning the module M
return M
