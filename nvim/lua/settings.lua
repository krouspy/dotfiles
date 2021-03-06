-- global options
vim.o.hidden = true
vim.o.encoding = "UTF-8"
vim.o.smarttab = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.termguicolors = true
vim.o.cursorline = true -- required for modes.nvim
vim.g.mapleader = " "

-- needed for nvim-cmp
vim.o.completeopt = "menu,menuone,noselect"

-- window-local options
vim.wo.number = true
vim.wo.linebreak = true
vim.wo.wrap = true

-- buffer-local options
vim.bo.tabstop = 4
vim.bo.shiftwidth = vim.bo.tabstop
vim.bo.expandtab = true

vim.g.bufferline = {
  icon_separator_active = "|",
  icon_separator_inactive = "|"
}

vim.cmd("set splitright")
vim.cmd("set splitbelow")

vim.cmd("set background=dark")
-- vim.cmd("colorscheme onedark")
vim.g.catppuccin_flavour = "macchiato"
vim.cmd("colorscheme catppuccin")
