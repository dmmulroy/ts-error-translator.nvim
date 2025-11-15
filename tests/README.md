# Testing ts-error-translator Lua Engine

This directory contains tests for the Lua implementation of the ts-error-translator engine.

## Prerequisites

### Neovim
Tests require Neovim to be installed and available in your PATH.

### plenary.nvim
Tests use [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) as the testing framework.

**Installation (choose one):**

1. **Global installation (recommended):**
   ```bash
   git clone https://github.com/nvim-lua/plenary.nvim ~/.local/share/nvim/site/pack/vendor/start/plenary.nvim
   ```

2. **Via plugin manager:**
   If plenary.nvim is installed via your plugin manager, tests will use that installation.

3. **CI/temporary:**
   ```bash
   mkdir -p ~/.local/share/nvim/site/pack/vendor/start
   git clone --depth=1 https://github.com/nvim-lua/plenary.nvim ~/.local/share/nvim/site/pack/vendor/start/plenary.nvim
   ```

### Test Configuration
Tests use `tests/minimal_init.vim` for isolated, reproducible test runs. XDG_CONFIG_HOME is set to `/tmp` to avoid loading user config while preserving access to vim.lsp APIs.

## Running Tests

### Run all tests
```bash
make test
```

### Run a specific test file
```bash
make test-file FILE=tests/spec/parser_spec.lua
```

### Direct nvim commands
```bash
# All tests
XDG_CONFIG_HOME=/tmp nvim --headless -u tests/minimal_init.vim -c "PlenaryBustedDirectory tests/spec/" -c "quit"

# Single file
XDG_CONFIG_HOME=/tmp nvim --headless -u tests/minimal_init.vim -c "PlenaryBustedFile tests/spec/utils_spec.lua" -c "quit"
```

## Test Organization

- `spec/diagnostic_spec.lua` - Tests for LSP diagnostic handler integration (33 tests)
  - `translate_diagnostic_message` function (uses `diag.code` field)
  - LSP handler behavior (server filtering, message mutation)
  - Complex type handling (union, intersection, generic types)
  - Multi-line error messages
  - Edge cases (nil messages, missing diagnostics)

- `spec/fixtures_spec.lua` - Comprehensive fixture-based tests (68 tests)
  - Tests all 67 error codes with realistic examples
  - Organized by error category (type assignment, properties, functions, etc.)
  - Validates translation coverage for entire error database
  - Tests actual error messages from fixture files

- `spec/db_spec.lua` - Tests for all 67 TypeScript error codes in the database (67 tests)
  - Basic validation: Ensures each error has required fields
  - Realistic parsing: Tests actual error message parsing and parameter extraction

- `spec/parser_spec.lua` - Tests for parsing edge cases
  - Multiple errors of the same type
  - Variadic arguments (quoted and non-quoted parameters)
  - Empty parameters
  - Error sorting

- `spec/utils_spec.lua` - Tests for utility functions
  - `fill_body_with_items` parameter substitution


## Test Fixtures

The `fixtures/` directory contains comprehensive TypeScript files covering all 67 error codes:

### Configuration Files (4)
- `tsconfig.json` - Base TypeScript configuration
- `tsconfig.strict.json` - Strict mode (noImplicitAny, strictNullChecks, etc.)
- `tsconfig.jsx.json` - JSX/React support
- `tsconfig.isolated.json` - isolatedModules mode

### Comprehensive Fixtures (12 files, ~1,455 lines)
Organized by error category with 2-4 variants per error code:

1. **type-assignment-errors.ts** (11 codes) - Type compatibility, assignability
2. **object-property-errors.ts** (4 codes) - Property access, excess properties
3. **function-errors.ts** (6 codes) - Function signatures, calls, returns
4. **module-import-errors.ts** (5 codes) - Module resolution, imports/exports
5. **syntax-errors.ts** (16 codes) - Parsing and syntax errors
6. **interface-generic-errors.ts** (2 codes) - Interfaces, generics
7. **scope-variable-errors.ts** (4 codes) - Variables, scope, declarations
8. **advanced-type-errors.ts** (6 codes) - Mapped types, assertions, iterators
9. **class-constructor-errors.ts** (2 codes) - Classes, constructors
10. **strict-mode-errors.ts** (3 codes) - Strict type-checking flags
11. **jsx-react-errors.ts** (3 codes) - JSX/React specific
12. **operator-misc-errors.ts** (5 codes) - Operators, misc errors

### Module Companion Files (3)
- `modules/valid-module.ts` - Valid exports for import testing
- `modules/default-export.ts` - Default export pattern
- `modules/named-exports.ts` - Named exports pattern

### Documentation
- `fixtures/README.md` - Quick error code lookup table mapping codes to file:line

**Coverage: 67/67 error codes (100%)**

These fixtures are useful for:
- **Automated testing**: All 67 codes tested in `fixtures_spec.lua`
- **Manual testing**: Open fixtures in Neovim to verify translations
- **Regression testing**: Ensure translations work with real TypeScript errors
- **Documentation**: Examples of every supported error pattern
- **Test generation**: Structured format for generating additional tests

## Test Structure

Tests follow plenary.nvim busted-style format:

```lua
describe("feature name", function()
  it("should do something", function()
    local result = some_function()
    assert.equals(expected, result)
    assert.are.same(expected_table, result_table)
  end)
end)
```

All spec files require modules directly (no manual `package.path` setup needed):
```lua
local parser = require("ts-error-translator.parser")
```

## Common Assertions

- `assert.equals(expected, actual)` - Simple equality
- `assert.are.same(expected, actual)` - Deep equality (for tables)
- `assert.is_not_nil(value)` - Value is not nil
- `assert.is_true(condition)` - Boolean true
- `assert.is_false(condition)` - Boolean false
