local M = {}

-- Retrieves the name of an LSP client given its client ID.
-- @param client_id number: The ID of the LSP client.
-- @return string: The name of the LSP client, or "unknown" if the client is not found.
local function get_lsp_client_name_by_id(client_id)
  local client = vim.lsp.get_client_by_id(client_id)
  local client_name = client and client.name or "unknown"
  return client_name
end

local function translate_diagnostic_message(message)
  local parsed = require("ts-error-translator.parser").parse_errors(message)
  if #parsed > 0 and parsed[1].improvedError then
    return message .. "\n\n" .. parsed[1].improvedError.body
  end
  return message
end

function M.setup(opts)
  -- Override LSP publishDiagnostics handler
  local original_publish_diagnostics = vim.lsp.handlers["textDocument/publishDiagnostics"]

  vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
    if result and result.diagnostics then
      local client_name = get_lsp_client_name_by_id(ctx.client_id)

      if vim.tbl_contains(opts.servers, client_name) then
        for _, diag in ipairs(result.diagnostics) do
          if diag.message then
            diag.message = translate_diagnostic_message(diag.message)
          end
        end
      end
    end

    return original_publish_diagnostics(err, result, ctx, config)
  end
end

return M
