# Nano

A Neovim colorscheme based on
[nano-emacs](https://github.com/rougier/nano-emacs), written in lua with [lush.nvim](https://github.com/rktjmp/lush.nvim).

> It is still in early stages, and only the dark variant has been implemented
> yet

## Installation

**Requirements** - `nano.nvim` requires the `neovim v0.6` or greater to work.

Using `packer`

```lua
use {"gaelph/nano.nvim", requires = {"rktjmp/lush.nvim"}}
```

## Usage

In your `init.lua`:

```lua
vim.cmd("colorscheme nano")
```

## Configuration

None so far

## PLugins

> Some of those have still imcomplete support

- [conflict-marker.vim](https://github.com/rhysd/conflict-marker.vim)
- [ gitsigns.nvim ](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [neogit](https://github.com/TimUntersberger/neogit) (notification colors)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (partially)

