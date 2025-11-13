local M = {}

local function translate_diagnostic_message(message)
  local parsed = require("ts-error-translator").parse_errors(message)
  if #parsed > 0 and parsed[1].improvedError then
    return message .. "\n\n" .. parsed[1].improvedError.body
  end
  return message
end

function M.setup()
  -- Override LSP publishDiagnostics handler
  local original_publish_diagnostics = vim.lsp.handlers["textDocument/publishDiagnostics"]

  vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
    if result and result.diagnostics then
      local client = vim.lsp.get_client_by_id(ctx.client_id)
      if client and vim.tbl_contains({ "typescript", "typescriptreact" }, vim.bo[vim.uri_to_bufnr(result.uri)].filetype) then
        for _, diag in ipairs(result.diagnostics) do
          if diag.message then
            diag.message = translate_diagnostic_message(diag.message)
          end
        end
      end
    end

    return original_publish_diagnostics(err, result, ctx, config)
  end

  -- Setup virtual text handler
  local original_handler = vim.diagnostic.handlers.virtual_text

  vim.diagnostic.handlers.ts_error_translator = {
    show = function(namespace, bufnr, diagnostics, opts)
      local ft = vim.bo[bufnr].filetype
      if not vim.tbl_contains({ "typescript", "typescriptreact" }, ft) then
        return original_handler.show(namespace, bufnr, diagnostics, opts)
      end

      for _, diag in ipairs(diagnostics) do
        diag.message = translate_diagnostic_message(diag.message)
      end

      return original_handler.show(namespace, bufnr, diagnostics, opts)
    end,
  }
end

return M
