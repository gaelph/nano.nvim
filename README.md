# Nano

A Neovim colorscheme based on
[nano-emacs](https://github.com/rougier/nano-emacs), written in lua with [lush.nvim](https://github.com/rktjmp/lush.nvim).

> It is still in early stages, and only the dark variant has been implemented
> yet

## Installation

**Requirements** - `nano.nvim` requires `neovim v0.9` or greater to work.

Using `packer`

```lua
use {"gaelph/nano.nvim"}
```

Using `lazy.nvim`

```lua
{"gaelph/nano.nvim"}
```

## Usage

In your `init.lua`:

```lua
vim.cmd("colorscheme nano-light")
-- or
vim.cmd("colorscheme nano-dark")
```

## Configuration

None so far

## PLugins

- [conflict-marker.vim](https://github.com/rhysd/conflict-marker.vim)
- [feline](https://github.com/famiu/feline.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [navic](https://github.com/SmiteshP/nvim-navic)
- [neogit](https://github.com/TimUntersberger/neogit) (notification colors)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-orgmode](https://github.com/nvim-orgmode/orgmode)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- netrw

