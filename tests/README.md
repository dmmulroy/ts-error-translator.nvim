# Testing ts-error-translator Lua Engine

This directory contains tests for the Lua implementation of the ts-error-translator engine.

## Prerequisites

### Neovim
Tests require Neovim to be installed and available in your PATH.

### plenary.nvim
Tests use [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) as the testing framework.

**Installation options:**

1. **Global installation (recommended for testing):**
   ```bash
   git clone https://github.com/nvim-lua/plenary.nvim ~/.local/share/nvim/site/pack/vendor/start/plenary.nvim
   ```

2. **Via your plugin manager:**
   If you already have plenary.nvim installed via your plugin manager (lazy.nvim, packer, etc.), the tests will use that installation.

3. **Temporary installation for CI:**
   ```bash
   mkdir -p ~/.local/share/nvim/site/pack/vendor/start
   git clone --depth=1 https://github.com/nvim-lua/plenary.nvim ~/.local/share/nvim/site/pack/vendor/start/plenary.nvim
   ```

## Running Tests

### Run all tests
```bash
./tests/run_tests.sh
```

Or directly with nvim:
```bash
cd packages/engine
nvim --headless -c "PlenaryBustedDirectory tests/spec/" -c "quit"
```

### Run a specific test file
```bash
nvim --headless -c "PlenaryBustedFile tests/spec/utils_spec.lua" -c "quit"
```

## Test Organization

- `spec/db_spec.lua` - Tests for all 67 TypeScript error codes in the database
  - Basic validation: Ensures each error has required fields
  - Realistic parsing: Tests actual error message parsing and parameter extraction

- `spec/parser_spec.lua` - Tests for parsing edge cases
  - Multiple errors of the same type
  - Variadic arguments (quoted and non-quoted parameters)
  - Empty parameters
  - Error sorting

- `spec/utils_spec.lua` - Tests for utility functions
  - `fill_body_with_items` parameter substitution

- `nvim_test.lua` - Legacy smoke tests (kept for backwards compatibility)

## Test Structure

Tests follow the plenary.nvim busted-style format:

```lua
describe("feature name", function()
  it("should do something", function()
    local result = some_function()
    assert.equals(expected, result)
    assert.are.same(expected_table, result_table)
  end)
end)
```

## Common Assertions

- `assert.equals(expected, actual)` - Simple equality
- `assert.are.same(expected, actual)` - Deep equality (for tables)
- `assert.is_not_nil(value)` - Value is not nil
- `assert.is_true(condition)` - Boolean true
- `assert.is_false(condition)` - Boolean false
