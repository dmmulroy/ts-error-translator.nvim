local M = {}

function M.parse_errors(message)
  return require("ts-error-translator.parser").parse_errors(message)
end

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

M.config = {}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", DEFAULT_OPTS, opts or {})

  if opts.auto_attach then
    require("ts-error-translator.diagnostic").setup(M.config)
  end
end

return M
