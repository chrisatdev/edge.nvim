# edge.nvim

A Neovim colorscheme with dark and light variants, built around a warm teal-and-orange palette.

## Palette

| Name | Hex | Role |
|---|---|---|
| Andracita | `#1B262C` | Dark background |
| Teal Dark | `#074A56` | Panels, borders, selection |
| Teal | `#0B7285` | Scrollbar, light-mode functions |
| Teal Light | `#60a3b0` | Strings, properties |
| Orange | `#E7590C` | Keywords, constants |
| Orange Light | `#EF9361` | Functions, parameters |
| Orange Dark | `#963A08` | Light-mode keywords |
| Bronze | `#796648` | Numbers, light-mode borders |
| Bone | `#F3F1EC` | Light background, dimmed text |
| White | `#FFFFFF` | Foreground |
| Grey | `#777c82` | Comments, operators, punctuation |

## Requirements

- Neovim >= 0.9
- A terminal with true color support (`termguicolors`)

## Installation

### lazy.nvim

```lua
{
  "chrisatdev/edge.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("edge").setup({ variant = "default" }) -- "default" or "light"
    vim.cmd("colorscheme edge")
  end,
}
```

### packer.nvim

```lua
use {
  "chrisatdev/edge.nvim",
  config = function()
    require("edge").setup({ variant = "default" })
    vim.cmd("colorscheme edge")
  end,
}
```

### vim-plug

```vim
Plug 'chrisatdev/edge.nvim'
```

Then in your config:

```lua
require("edge").setup({ variant = "default" })
vim.cmd("colorscheme edge")
```

### Manual (no plugin manager)

Clone the repo into your Neovim packages path:

```bash
git clone https://github.com/chrisatdev/edge.nvim \
  ~/.local/share/nvim/site/pack/plugins/start/edge.nvim
```

Then in your config:

```lua
require("edge").setup()
vim.cmd("colorscheme edge")
```

## Configuration

```lua
require("edge").setup({
  variant = "default",             -- "default" (dark) | "light"
  transparent_background = false,  -- remove background color
})
```

### Selecting the variant

Via `setup()`:

```lua
require("edge").setup({ variant = "light" })
vim.cmd("colorscheme edge")
```

Via `vim.g.edge_variant` (takes priority over setup):

```lua
vim.g.edge_variant = "light"
vim.cmd("colorscheme edge")
```

Via `vim.o.background` (fallback when no variant is set):

```lua
vim.o.background = "light"
vim.cmd("colorscheme edge")
```

## Lualine

`edge.nvim` ships a lualine theme. Set it in your lualine config:

```lua
require("lualine").setup({
  options = { theme = "edge" },
})
```

## Hot reload

While editing the theme files, reload without restarting Neovim:

```vim
:colorscheme edge
```

## Supported plugins

- Treesitter
- LSP (semantic tokens + diagnostics)
- Telescope
- nvim-tree
- GitSigns
- Which-key
- nvim-cmp
- Flash.nvim / Hop.nvim
- nvim-notify
- Snacks.nvim
- Indent Blankline
- Noice.nvim
- Bufferline
