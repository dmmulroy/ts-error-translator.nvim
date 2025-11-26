# Copilot Instructions for ts-error-translator.nvim

This is a Neovim plugin written in Lua that translates TypeScript error messages into human-readable explanations. It's a port of [Matt Pocock's ts-error-translator for VSCode](https://github.com/mattpocock/ts-error-translator).

## Project Structure

```
lua/ts-error-translator/
  init.lua         -- Public API and plugin setup
  parser.lua       -- Core parsing logic (extracts TS codes, O(1) lookup)
  matcher.lua      -- Pattern matching with vim.regex
  utils.lua        -- Helper functions
  lru.lua          -- LRU cache implementation
  diagnostic.lua   -- vim.diagnostic integration
  db.lua           -- Error database indexed by code (auto-generated)
```

## Code Style

- Follow the [StyLua](https://github.com/JohnnyMorganz/StyLua) formatter configuration in `.stylua.toml`
- Use 2 spaces for indentation
- Maximum line width of 120 characters
- Use double quotes for strings
- Add type annotations using `@class`, `@field`, `@param`, `@return` comments for public APIs
- Include `---@diagnostic disable:` comments when necessary to suppress known false positives

## Building

The error database (`lua/ts-error-translator/db.lua`) is auto-generated from:
- `tsErrorMessages.json` (TypeScript error patterns)
- `errors/*.md` (improved human-readable messages)

To rebuild the database:
```bash
make build
# or: node build-lua-db.js
```

**Important**: Never manually edit `lua/ts-error-translator/db.lua` - it's generated code.

## Testing

Tests use [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) test framework.

Run all tests:
```bash
make test
```

Run a specific test file:
```bash
make test-file FILE=tests/spec/parser_spec.lua
```

Tests are located in `tests/spec/` and follow the pattern `*_spec.lua`.

## Key Conventions

- The plugin uses O(1) lookup via error codes extracted from messages
- Error codes are extracted using the pattern `[Tt][Ss](%d+)`
- The LRU cache improves performance for repeated lookups
- Public API functions should be exposed through `init.lua`
- Use `pcall` for error handling to provide graceful fallbacks

## Adding New Error Translations

1. Create a new markdown file in `errors/` named `{error_code}.md`
2. Include frontmatter and the improved message body
3. Run `make build` to regenerate `db.lua`

## Dependencies

- **Runtime**: No external dependencies (uses native vim.regex)
- **Build**: Node.js with `front-matter` package
- **Testing**: plenary.nvim
