# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal Neovim configuration using **lazy.nvim** as the plugin manager. All configuration is in Lua.

## Architecture

- `init.lua` — Entry point; loads the three core modules in order: options, keymaps, plugins
- `lua/at0s/options.lua` — Editor settings (line numbers, tabs=2 spaces, Makefile autocmd for hard tabs)
- `lua/at0s/kmaps.lua` — Global keymaps and utility functions (leader is `<Space>`)
- `lua/at0s/plugins.lua` — Bootstraps lazy.nvim and loads all plugin specs from `lua/plugins/`
- `lua/plugins/*.lua` — Each file returns a lazy.nvim plugin spec (one plugin per file)

## Plugin Specs

Each file in `lua/plugins/` is auto-discovered by lazy.nvim via `require("lazy").setup("plugins")`. To add a new plugin, create a new `.lua` file in that directory returning a plugin spec table.

## LSP Setup

LSP uses the native `vim.lsp` API (not lspconfig's `setup()` pattern):
- Mason installs servers; mason-lspconfig ensures they're installed
- Servers are configured with `vim.lsp.config()` and enabled with `vim.lsp.enable()`
- Configured servers: lua_ls, ts_ls, pyright, gh_actions_ls, rust_analyzer, dockerfile_language_server

## Formatting

Handled by **none-ls** (null-ls fork): stylua (Lua), prettier (JS/TS/JSON/CSS/HTML/YAML), black (Python via pyenv shim). Format with `<leader>ff`.

## Key Keymaps

- `<leader>e` — Netrw explorer
- `<C-n>` — Neo-tree file browser
- `<leader>tf` — Telescope find files
- `<leader>tt` / `<leader>tg` — Telescope live grep
- `<leader>tb` — Telescope buffers
- `<leader>ff` — Format buffer
- `<leader>ll` — Open diagnostic float
- `<leader>ca` — Code action
- `gd` — Go to definition
- `K` — Hover docs
