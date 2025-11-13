# Changelog

## [Unreleased] - Complete Rewrite

### Breaking Changes

**Major API Rewrite**: Plugin rewritten from scratch w/ new architecture

- **API Changed**: Old `translate(msg)` → New `parse_errors(msg)` returns table
- **Removed**: `lua/ts-error-translator/error_templates/*.md` (now uses prebuilt `db.lua`)
- **Old API**: Returned translated string
- **New API**: Returns table: `{code, error, improvedError, parseInfo, category}`

### Added

- O(1) error lookup by extracting TS code first (vs O(n) pattern matching)
- LRU cache (100 entries) for translated messages
- 67 TypeScript error translations (same as before)
- Pattern caching w/ compiled vim.regex
- Build system: `make build` or `node build-lua-db.js`
- Test suite: `make test` (requires plenary.nvim)
- Comprehensive error handling w/ fallback messages

### Architecture

```
lua/ts-error-translator/
  init.lua         -- Public API: parse_errors(), setup()
  parser.lua       -- Core parsing w/ LRU cache
  matcher.lua      -- vim.regex pattern matching
  utils.lua        -- Helper functions
  lru.lua          -- LRU cache implementation
  diagnostic.lua   -- vim.diagnostic integration
  db.lua           -- 67 errors indexed by code (generated)
```

### Performance

- **O(1) lookup**: Extract TS code → hash table lookup (not O(n) pattern matching)
- **LRU cache**: 100 entries for translated messages
- **Pattern caching**: Compiled vim.regex cached per error
- **No iteration**: Only checks patterns for codes found in message

### Migration Guide

**Old usage**:
```lua
local translator = require("ts-error-translator")
local result = translator.translate("TS2339: Property 'foo' does not exist on type 'Bar'.")
-- Returns: "TS2339: You're trying to access 'foo' on an object that doesn't contain it."
```

**New usage**:
```lua
local translator = require("ts-error-translator")
local results = translator.parse_errors("error TS2339: Property 'foo' does not exist on type 'Bar'.")
-- Returns: { { code = 2339, error = "...", improvedError = { body = "..." }, parseInfo = {...} } }

-- Access improved message:
if #results > 0 and results[1].improvedError then
  print(results[1].improvedError.body)
end
```

**Setup** (unchanged):
```lua
require("ts-error-translator").setup({
  auto_attach = true  -- Automatically hook into vim.diagnostic
})
```
