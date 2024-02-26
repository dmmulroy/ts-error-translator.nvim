# ts-error-translator.nvim

Neovim plugin to turn TypeScript errors into plain English.

![image](https://github.com/dmmulroy/ts-error-translator.nvim/assets/2755722/5fcd1f42-d941-491b-a89b-33ab3c2ed29b)


This is a port of [Matt Pocock's ts-error-translator for VSCode](https://github.com/mattpocock/ts-error-translator)

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
Plug 'dmmulroy/tsc.nvim'
```

Then run `:PlugInstall` to install the plugin.

## Setup

To set up the plugin, add the following line to where you manage your plugins:

```lua
require('ts-error-translator').setup()
```

## Configuration

By default, `ts-error-translator.nvim` will attach itself to your `tsserver`
lsp and automatically start translating errors for you. The following is the
default configuration for the plugin:

```lua
{
  auto_override_publish_diagnostics = true,
}
```

If you want to override `tsserver`'s `textDocument/publishDiagnostics` handler
`manually, ts-error-translator.nvim` exports a function,
`require('ts-error-translator').lsp_publish_diagnostics_override`, that you can
then use to override your lsp handlers.

## Contributing

Feel free to open issues or submit pull requests if you encounter any bugs or have suggestions for improvements. Your contributions are welcome!

## License

This plugin is released under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- A special thanks to [Matt Pocock](https://github.com/mattpocock) for creating the `ts-error-translator`, providing the foundation for this project.
