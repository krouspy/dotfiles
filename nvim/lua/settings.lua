-- global options
vim.o.hidden = true
vim.o.encoding = "UTF-8"
vim.o.smarttab = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.termguicolors = true
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

vim.cmd("colorscheme tokyonight")
