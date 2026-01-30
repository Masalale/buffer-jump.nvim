# buffer-jump.nvim

LunarVim-style buffer picker for LazyVim. Jump to any buffer with a single keypress using highlighted letter keys.

## Features

- **Letter-key selection**: Each buffer shows a highlighted letter - press it to jump instantly
- **Visual indicators**: Modified buffers show `•`, unloaded session buffers show `○`
- **Number keys**: Press 1-9 to jump to buffers by position
- **Minimap compatible**: Works seamlessly with neominimap.nvim
- **Session aware**: Shows all session-restored buffers, even if not yet loaded
- **Configurable**: Customize colors, dimensions, and border style

## Installation

### With lazy.nvim (Recommended)

```lua
{
  "Masalale/buffer-jump.nvim",
  keys = {
    { "<leader>bj", function() require("buffer-jump").jump_to_buffer() end, desc = "Jump to Buffer" },
  },
  opts = {},
}
```

### With packer.nvim

```lua
use {
  'Masalale/buffer-jump.nvim',
  config = function()
    require('buffer-jump').setup()
    vim.keymap.set('n', '<leader>bj', function() require('buffer-jump').jump_to_buffer() end, { desc = 'Jump to Buffer' })
  end
}
```

## Usage

| Key | Action |
|-----|--------|
| `<leader>bj` | Open buffer picker |
| `[letter]` | Jump to buffer with that letter |
| `1-9` | Jump to buffer by position |
| `<CR>` | Jump to selected buffer |
| `j/k` | Navigate up/down |
| `q` / `<Esc>` | Close picker |

## Configuration

```lua
require("buffer-jump").setup({
  width = 55,
  max_height = 12,
  border = "rounded",
  highlights = {
    key = { fg = "#61AFEF", bold = true },
    modified = { fg = "#E06C75", bold = true },
    unloaded = { fg = "#5C6370", italic = true },
    selected = { bg = "#3E4451" },
  },
})
```

## Screenshots

```
┌─────── Jump to Buffer (○=unloaded) ───────┐
│   [I] init.lua                            │
│ • [K] keymaps.lua                         │
│ ○ [O] options.lua                         │
│   [P] plugins.lua                         │
└───────────────────────────────────────────┘
```

- `•` = modified (unsaved changes)
- `○` = unloaded (session-restored, not yet opened)
- `[X]` = press this letter to jump

## Why This Plugin?

LazyVim's default `<leader>,` uses fuzzy search which requires typing.
This plugin provides **instant** buffer switching - see the letter, press it, done.

Inspired by LunarVim's buffer switcher UX.

## License

MIT
