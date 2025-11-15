---@diagnostic disable: undefined-global
local M = {}

---@class Config
---@field auto_attach boolean Auto-attach to LSP servers (default: true)
---@field servers string[] LSP server names to translate diagnostics for
---@field auto_override_publish_diagnostics? boolean DEPRECATED: Use auto_attach instead

---Parse TypeScript error messages
---@param message string Diagnostic message to parse
---@return ParseResult[] Array of parsed errors
function M.parse_errors(message)
  return require("ts-error-translator.parser").parse_errors(message)
end

---@type Config
local DEFAULT_OPTS = {
  auto_attach = true,
  servers = {
    "astro",
    "svelte",
    "ts_ls",
    "tsserver", -- deprecrated
    "typescript-tools",
    "volar",
    "vtsls",
  },
}

---@type Config
M.config = DEFAULT_OPTS

---Setup ts-error-translator plugin
---@param opts? Config Configuration options
function M.setup(opts)
  opts = opts or {}

  -- Handle deprecated auto_override_publish_diagnostics
  if opts.auto_override_publish_diagnostics ~= nil then
    vim.notify(
      "ts-error-translator: auto_override_publish_diagnostics is deprecated, use auto_attach instead",
      vim.log.levels.WARN
    )
    if opts.auto_attach == nil then
      opts.auto_attach = opts.auto_override_publish_diagnostics
    end
  end

  M.config = vim.tbl_deep_extend("force", DEFAULT_OPTS, opts)

  if M.config.auto_attach then
    ---@type DiagnosticConfig
    local diagnostic_config = { servers = M.config.servers }
    require("ts-error-translator.diagnostic").setup(diagnostic_config)
  end
end

return M
