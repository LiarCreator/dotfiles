# Catppuccin Themed Dotfiles

This repository contains my personal dotfiles for a Catppuccin-themed Hyprland installation. These configurations are managed using `stow`.

## Latest Updates

The repository has been completely updated with a new structure and improved configurations. The setup is now more modular and easier to manage.

## File Structure

The directory is organized by application:

```
.
├── GEMINI.md
├── README.md
├── hypr/
│   └── .config/
│       └── hypr/
│           ├── hyprland.conf
│           └── core/
│               ├── binds.conf
│               ├── default.conf
│               └── looks.conf
├── nvim/
│   └── .config/
│       └── nvim/
│           ├── init.lua
│           ├── lazy-lock.json
│           └── lua/
│               └── Tie/
│                   ├── init.lua
│                   ├── lazy_init.lua
│                   ├── map.lua
│                   ├── set.lua
│                   └── lazy/
│                       ├── autopair.lua
│                       ├── bufferline.lua
│                       ├── cmp.lua
│                       ├── colors.lua
│                       ├── high-color.lua
│                       ├── lsp.lua
│                       ├── lualine.lua
│                       ├── nvimtree.lua
│                       ├── telescope.lua
│                       ├── treesitter.lua
│                       └── whickey.lua
├── starship/
│   └── .config/
│       └── starship.toml
└── waybar/
    └── .config/
        └── waybar/
            ├── config.jsonc
            ├── style.css
            ├── theme.css
            ├── modules/
            │   ├── network.jsonc
            │   ├── custom/
            │   │   ├── power_menu.jsonc
            │   │   ├── shutdown.jsonc
            │   │   └── system_update.jsonc
            │   └── hyprland/
            │       ├── clock.jsonc
            │       ├── cpu.jsonc
            │       ├── window.jsonc
            │       └── workspaces.jsonc
            ├── scripts/
            │   └── shutdown.sh
            └── styles/
                ├── modules-center.css
                ├── modules-left.css
                ├── modules-right.css
                ├── states.css
                ├── typeface.css
                └── waybar.css
```

## Neovim Configuration

Neovim is configured using Lua. The configuration is structured to be modular and easy to maintain. The plugin manager used is `lazy.nvim`.

### Neovim Plugins

Here is a list of the plugins used in this Neovim configuration:

-   **[windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)**: Autopairs, integrates with nvim-cmp.
-   **[akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)**: A snazzy bufferline for Neovim.
-   **[hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: A completion engine plugin for Neovim.
-   **[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)**: Snippet engine for Neovim.
-   **[saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)**: Luasnip completion source for nvim-cmp.
-   **[rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)**: A set of preconfigured snippets for different languages.
-   **[folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)**: A clean, dark Neovim theme.
-   **[catppuccin/nvim](https://github.com/catppuccin/nvim)**: Soothing pastel theme for Neovim.
-   **[brenoprata10/nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors)**: Highlight colors in your code.
-   **[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)**: Portable package manager for Neovim that runs everywhere Neovim runs.
-   **[williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**: Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim.
-   **[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: A collection of common configurations for Neovim's built-in LSP.
-   **[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: A blazing fast and easy to configure statusline for Neovim.
-   **[nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)**: A file explorer for Neovim.
-   **[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: A highly extendable fuzzy finder over lists.
-   **[nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Treesitter configurations and abstraction layer for Neovim.
-   **[folke/which-key.nvim](https://github.com/folke/which-key.nvim)**: A plugin that shows pending keybindings.

## Installation

To use these dotfiles, you can clone this repository and use `stow` to create symlinks.

```bash
git clone https://github.com/LiarCreator/dotfiles.git
cd dotfiles
stow .
```