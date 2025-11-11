# Catppuccin Themed Dotfiles

This repository contains my personal dotfiles for a Catppuccin-themed Hyprland installation.

## Hyprland

Hyprland is a dynamic tiling Wayland compositor that offers fluid animations, rounded corners, and transparent windows.

### File Structure

```
hypr/
└── .config/
    └── hypr/
        ├── hyprland.conf
        └── core/
            ├── binds.conf
            ├── default.conf
            └── looks.conf
```

- `hyprland.conf`: The main configuration file that sources the other files.
- `core/binds.conf`: Contains all the keybindings for managing windows, workspaces, and applications.
- `core/default.conf`: Specifies the default applications to be used (e.g., terminal, browser) and the applications to be executed on startup.
- `core/looks.conf`: Defines the visual appearance of Hyprland, including gaps, borders, animations, and shadows.

## Neovim

Neovim is a hyperextensible Vim-based text editor.

### File Structure

```
nvim/
└── .config/
    └── nvim/
        ├── init.lua
        ├── lazy-lock.json
        └── lua/
            └── Tie/
                ├── init.lua
                ├── lazy_init.lua
                ├── map.lua
                ├── set.lua
                └── lazy/
                    ├── autopair.lua
                    ├── bufferline.lua
                    ├── cmp.lua
                    ├── colors.lua
                    ├── high-color.lua
                    ├── lsp.lua
                    ├── lualine.lua
                    ├── nvimtree.lua
                    ├── telescope.lua
                    ├── treesitter.lua
                    └── whickey.lua
```

### Lazy Plugins

- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [brenoprata10/nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## Starship

Starship is a minimal, blazing-fast, and infinitely customizable prompt for any shell!

### File Structure

```
starship/
└── .config/
    └── starship.toml
```

- `starship.toml`: The main configuration file for Starship, which defines the prompt's appearance and the information it displays.

## Waybar

Waybar is a highly customizable Wayland bar for Sway and wlroots based compositors.

### File Structure

```
waybar/
└── .config/
    └── waybar/
        ├── config.jsonc
        ├── style.css
        ├── modules/
        │   ├── custom/
        │   │   ├── power_menu.jsonc
        │   │   └── system_update.jsonc
        │   └── hyprland/
        │       ├── clock.jsonc
        │       ├── cpu.jsonc
        │       ├── window.jsonc
        │       └── workspaces.jsonc
        └── styles/
            ├── modules-center.css
            ├── modules-left.css
            ├── modules-right.css
            ├── states.css
            ├── typeface.css
            └── waybar.css
```

- `config.jsonc`: The main configuration file for Waybar, which defines the modules to be displayed on the bar.
- `style.css`: The main stylesheet for Waybar, which simply imports all the other style files.
- `modules/`: This directory contains the configuration for each individual Waybar module.
- `styles/`: This directory contains the CSS styles for the Waybar modules, allowing for a high degree of customization.
