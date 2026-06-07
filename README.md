# Neovim configuration

## Introduction

Hello world, this this my neovim configuration. This configuration is inspired (sometimes copied and pasted) by
[kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

This setup is heavily inspired by Kickstart.nvim, but gradually customized to better understand how Neovim, plugins, LSPs, Treesitter, and Lua configuration work under the hood.

## Features

* Plugin management with lazy.nvim
* LSP support via nvim-lspconfig, mason.nvim, and blink.cmp
* Syntax highlighting and parsing with Treesitter
* Fuzzy finding with Telescope
* File explorer with Oil
* Git integration with Gitsigns
* Formatting with Conform
* Keymap discovery with Which-Key
* Lightweight utilities from mini.nvim


## Structure

```txt
.
├── init.lua
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── blink-cmp.lua
│       ├── colorscheme.lua
│       ├── conform.lua
│       ├── gitsigns.lua
│       ├── lsp-config.lua # I need to learn more about this :D
│       ├── mini.lua
│       ├── oil.lua
│       ├── telescope.lua
│       ├── todo-comments.lua
│       ├── treesitter.lua
│       └── which-key.lua
└── README.md

```

## Goals

This configuration is intended to be educational rather than minimal or feature-complete.

The main goal is to learn:

* Lua
* Neovim internals
* LSP configuration
* Plugin development and integration
* Modern editor workflows

## Acknowledgements

* Kickstart.nvim
* lazy.nvim
* The Neovim community
* Plugin authors whose work makes Neovim awesome

