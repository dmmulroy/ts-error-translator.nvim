local M = {}

function M.parse_errors(message)
  return require("ts-error-translator.parser").parse_errors(message)
end

function M.setup(opts)
  opts = opts or {}

  if opts.auto_attach then
    require("ts-error-translator.diagnostic").setup()
  end
end

return M
