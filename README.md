# ts-error-translator.nvim

![image](https://github.com/dmmulroy/ts-error-translator.nvim/assets/2755722/5fcd1f42-d941-491b-a89b-33ab3c2ed29b)

A Neovim port of [Matt Pocock's ts-error-translator for VSCode](https://github.com/mattpocock/ts-error-translator) for turning messy and confusing TypeScript errors into plain English.

## Features

- Translates 67 TypeScript error messages into human-readable explanations
- vim.diagnostic integration for automatic translation
- No external dependencies (uses native vim.regex)

## Installation

To install the plugin, use your preferred Neovim plugin manager.

### lazy.nvim

To install the plugin using lazy.nvim, add the following to your plugin configuration:

```lua
{ 'dmmulroy/ts-error-translator.nvim' }
```

### Packer

To install the plugin using packer.nvim, add the following to your plugin configuration:

```lua
use('dmmulroy/ts-error-translator.nvim',)
```

### Vim-Plug

To install the plugin using vim-plug, add the following to your plugin configuration:

```vim
Plug 'dmmulroy/ts-error-translator.nvim'
```

Then run `:PlugInstall` to install the plugin.

## Setup

To set up the plugin, add the following line to where you manage your plugins:

```lua
require("ts-error-translator").setup({
  -- Auto-attach to LSP servers for TypeScript diagnostics (default: true)
  auto_attach = true,

  -- LSP server names to translate diagnostics for (default shown below)
  servers = {
    "astro",
    "svelte",
    "ts_ls",
    "tsserver",           -- deprecated, use ts_ls
    "typescript-tools",
    "volar",
    "vtsls",
  },
})
```

### Configuration Options

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `auto_attach` | `boolean` | `true` | Automatically hook into vim.diagnostic for configured servers |
| `servers` | `string[]` | See above | List of LSP server names to translate diagnostics for |

**Note**: `auto_override_publish_diagnostics` is deprecated. Use `auto_attach` instead.

## Usage

### Automatic Translation (Recommended)

With `auto_attach = true` (default), TypeScript diagnostics will automatically include improved error messages in your editor.

### API-only Mode

```lua
local translator = require("ts-error-translator")

-- Parse error message (must include TS error code)
local message = "error TS2339: Property 'foo' does not exist on type 'Bar'."
local results = translator.parse_errors(message)

for _, result in ipairs(results) do
  print("Code: " .. result.code)
  print("Error: " .. result.error)
  if result.improvedError then
    print("Translation: " .. result.improvedError.body)
  end
end
```

**Note**: Messages must include TypeScript error codes (e.g., `TS2339`) for translation. This is the standard format from the TypeScript LSP.

## Architecture

```
lua/ts-error-translator/
  init.lua         -- Public API
  parser.lua       -- Core parsing logic (extracts TS codes, O(1) lookup)
  matcher.lua      -- Pattern matching with vim.regex
  utils.lua        -- Helper functions
  lru.lua          -- LRU cache
  diagnostic.lua   -- vim.diagnostic integration
  db.lua           -- 67 errors indexed by code {[2339] = {...}, ...}
```

## Development

### Building

To regenerate `db.lua` from source:

```bash
make build
# or: node build-lua-db.js
```

This parses:
- `src/tsErrorMessages.json` (1796 TS error patterns)
- `errors/*.md` (67 improved messages)

And generates a single Lua table with merged data.

### Testing

Run tests with Neovim:

```bash
make test
# or: ./tests/run_tests.sh
```

Tests verify:
- Single error parsing with parameter extraction
- Multiple errors in one message
- Error code extraction
- Improved message template substitution

**Requirements**: plenary.nvim for test suite

## Related

If you like this plugin and find it useful, you might also like my plugin, [tsc.nvim](https://github.com/dmmulroy/tsc.nvim), a Neovim plugin for seamless, asynchronous project-wide TypeScript type-checking using the TypeScript compiler (tsc)

## Contributing

Feel free to open issues or submit pull requests if you encounter any bugs or have suggestions for improvements. Your contributions are welcome!

## License

This plugin is released under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

A special thanks to [Matt Pocock](https://github.com/mattpocock) for creating the `ts-error-translator`, providing the foundation for this project.
