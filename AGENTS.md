# ts-error-translator.nvim

**Generated:** 2026-01-03 | **Commit:** c1e6a55 | **Branch:** main

Neovim plugin translating TypeScript errors to human-readable messages. Port of Matt Pocock's VSCode extension.

## Structure

```
lua/ts-error-translator/
  init.lua       -- Public API: setup(), parse_errors()
  diagnostic.lua -- Wraps vim.lsp.handlers["textDocument/publishDiagnostics"]
  parser.lua     -- Core logic, LRU-cached
  matcher.lua    -- vim.regex pattern matching
  db.lua         -- GENERATED: error code -> translation lookup
  lru.lua        -- LRU cache (100 entries)
  utils.lua      -- fill_body_with_items()

errors/         -- 67 markdown files, source data for db.lua
tests/spec/     -- Plenary test specs (*_spec.lua)
tests/fixtures/ -- Real TS files triggering specific errors
```

## Where to Look

| Task | Location |
|------|----------|
| Add error translation | `errors/{code}.md` then `make build` |
| Plugin config/setup | `lua/ts-error-translator/init.lua` |
| LSP integration | `lua/ts-error-translator/diagnostic.lua` |
| Error parsing | `lua/ts-error-translator/parser.lua` |
| Pattern matching | `lua/ts-error-translator/matcher.lua` |

## Module Flow

```
setup() -> diagnostic.setup() -> wraps LSP handler
                                      |
                                      v
                               parser.parse_errors()
                                      |
                         +------------+------------+
                         |            |            |
                      db.lua    matcher.lua    lru.lua
```

## Anti-Patterns

- **NEVER edit `db.lua`** - auto-generated from `tsErrorMessages.json` + `errors/*.md`
- **DEPRECATED:** `auto_override_publish_diagnostics` -> use `auto_attach`
- **DEPRECATED:** `"tsserver"` LSP name -> use `"ts_ls"`

## Conventions

| Rule | Detail |
|------|--------|
| Indent | 2 spaces |
| Line width | 120 chars |
| Quotes | Double preferred |
| Type annotations | `---@class`, `---@param`, `---@return` |
| Module pattern | `local M = {}` ... `return M` |
| Error handling | `pcall` for graceful fallbacks |
| Code lookup | O(1) via `[Tt][Ss](%d+)` pattern extraction |

## Commands

```bash
make build              # Regenerate db.lua from errors/*.md
make test               # Run all tests
make test-file FILE=... # Run single test file
```

## Testing

- Framework: plenary.nvim (busted-style)
- Run: `nvim --headless -u tests/minimal_init.vim -c "PlenaryBustedDirectory tests/spec/"`
- Assertions: `assert.equals`, `assert.are.same`, `assert.is_not_nil`
- Mocking: save/restore `vim.lsp.*` in before_each/after_each

## CI

- Matrix: `{ubuntu, macos}` x `{stable, nightly}` Neovim
- Steps: npm install -> make build -> make test
- Daily sync: checks upstream for new error templates

## Notes

- No `plugin/` dir - requires explicit `setup()` call
- No `:help` docs - README only
- Health check missing (`lua/ts-error-translator/health.lua`)
- Typo in init.lua:23 "deprecrated" -> "deprecated"
- `check-ts-errors.yml` references `error_templates/` but repo uses `errors/`
