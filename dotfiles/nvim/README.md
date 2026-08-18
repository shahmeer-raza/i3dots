# Nvim Config

Neovim setup with LSP, autocomplete, and telescope.

## Dependencies

Install these first:

```bash
paru -S fzf ripgrep xclip
```

- **fzf** - Fuzzy finder (telescope needs it)
- **ripgrep** - Fast file search (telescope needs it)
- **xclip** - Clipboard support

## Setup

```bash
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
cd ~/.config/nvim
nvim
```

Lazy will auto-install plugins on first launch.

Run `:Mason` to install LSP servers:
- lua_ls
- pyright
- bashls
- ts_ls
- clangd

## Keybinds

| Key | Action |
|-----|--------|
| `<leader>e` | Show error message |
| `<C-Space>` | Autocomplete |
| `<leader>ff` | Find files (telescope) |
| `<leader>fg` | Live grep (telescope) |

## Plugins

- **nvim-lspconfig** - LSP config
- **nvim-cmp** - Autocomplete
- **telescope** - Fuzzy finder
- **nvim-treesitter** - Syntax highlighting
- **mason** - LSP installer
- **lazy.nvim** - Plugin manager

## Structure

```
.
├── init.lua
├── lazy-lock.json
└── lua/
    ├── config/
    │   ├── keybinds.lua
    │   ├── lazy.lua
    │   ├── options.lua
    │   └── theme.lua
    └── plugins/
        ├── cmp.lua
        ├── lsp.lua
        ├── mason.lua
        ├── telescope.lua
        └── treesitter.lua
```
