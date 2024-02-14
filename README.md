# Better TypeScript Errors for Neovim

Welcome to our repository, a dedicated effort to improve TypeScript error messages directly in Neovim, inspired by and built upon the foundations of [Matt Pocock's ts-error-translator](https://github.com/mattpocock/ts-error-translator).

## About

This project utilizes the `ts-error-translator` engine to parse and translate TypeScript compiler errors into more understandable and human-friendly messages. Our goal is to integrate these improved error messages into the Neovim development environment, making TypeScript development more accessible and efficient.

## Features

- **Improved Error Messages**: Leveraging the `ts-error-translator` to enhance the readability and comprehensibility of TypeScript compiler errors.
- **Neovim Integration**: Direct integration into Neovim, allowing for a seamless development experience.
- **Open Source**: Contributions are welcome! Join us in making TypeScript development better for everyone.

## Errors Handled

Our project handles a variety of TypeScript errors as defined by the `ts-error-translator`. For a detailed list of the errors currently supported, please refer to the [errors directory](https://github.com/mattpocock/ts-error-translator/tree/main/packages/engine/errors) of the `ts-error-translator` repository.

## Contributing

We welcome contributions! If you're interested in improving TypeScript error handling in Neovim or want to suggest new features, please feel free to create a Pull Request and we will take a look at it.

## Error Templates Destination

The translated and improved TypeScript errors are destined for integration within Neovim via our error templates, which can be found at [better-ts-errors.nvim/error_templates](https://github.com/dmmulroy/better-ts-errors.nvim/tree/main/error_templates).

## License

This project is open-source and available under the [MIT License](LICENSE).

## Acknowledgements

- A special thanks to [Matt Pocock](https://github.com/mattpocock) for creating the `ts-error-translator`, providing the foundation for this project.
