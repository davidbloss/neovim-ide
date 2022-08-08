# Neovim as an IDE

A collection of Neovim configurations with different goals.

## Base IDE

The foundational IDE that other IDEs extend.

Changes to below items belong in this IDE to propagate to extending IDEs.
- Neovim options, settings, keymappings, etc. not related to plugins.
- Aesthetic things like colorschemes, statusline plugins, etc.
- Navigation plugins and settings for files, buffers, windows, etc.
- Basic text manipulation such as autopairs.
- Snippets. Candidate for moving but here for now.
- Git related plugins, mappings, settings, etc.

## Bash IDE
Base IDE with added Bash features.
- [explainshell](https://github.com/idank/explainshell)
- [shellcheck](https://github.com/koalaman/shellcheck)
- [bash-language-server](https://github.com/bash-lsp/bash-language-server)
parser installed via nvim-treesitter

## Python IDE
Base IDE with added Python features.
- Python 3 support
- Python linters, formatters, etc.
- [jedi-language-server](https://github.com/pappasam/jedi-language-server)
parser installed via nvim-treesitter

## C/C++ IDE
- LLVM/clang stuff
- [clangd](https://clangd.llvm.org) parser installed via nvim-treesitter
- [cmake](https://github.com/regen100/cmake-language-server)
parser installed via nvim-treesitter

## Full IDE

Contains features from each IDE setup above.
