local map = vim.api.nvim_set_keymap

local options = {noremap = true}
map("i", "jj", "<esc>", options)
map("i", "jk", "<esc>", options)
map("n", "j", "gj", options)
map("n", "k", "gk", options)
map("n", ";", ":", options)

map("n", "<leader>w", ":w<cr>", options)
map("n", "<leader>q", ":q<cr>", options)
map("n", "<leader>e", ":BufferNext<cr>", options)
map("n", "<leader>p", ":BufferPrevious<cr>", options)
map("n", "<leader>c", ":BufferClose<cr>", options)
map("n", "<c-\\>", ":vsplit<cr>", options)
-- Telescope
map("n", ",fb", "<cmd>Telescope file_browser<cr>", options)
map("n", ",fl", "<cmd>Telescope live_grep<cr>", options)
map("n", ",fs", "<cmd>Telescope grep_string<cr>", options)
map("n", ",fn", "<cmd>Telescope help-tags<cr>", options)
map("n", ",b", "<cmd>Telescope buffers<cr>", options)
-- Telescope - LSP
map("n", "gd", "<cmd>Telescope coc definitions<cr>", options)
map("n", "gi", "<cmd>Telescope coc implementations<cr>", options)
map("n", ",r", "<cmd>Telescope coc references<cr>", options)
map("n", ",dd", "<cmd>Telescope coc diagnostics<cr>", options)
map("n", ",NN", "<cmd>Telescope keymaps<cr>", options)
-- Telescope - Git
map("n", ",gc", "<cmd>Telescope git_commits<cr>", options)
map("n", ",gbc", "<cmd>Telescope git_bcommits<cr>", options)
map("n", ",gs", "<cmd>Telescope git_status<cr>", options)
map("n", ",gbb", "<cmd>Telescope git_branches<cr>", options)
-- Telescope - Extensions
map("n", ",p", "<cmd>Telescope projects<cr>", options)
-- Telescope - Custom
map("n", "<c-p>", "<cmd>lua project_files()<cr>", options)
-- Nvim-Tree
map("n", "<c-n>", ":lua toggle_nvim_tree()<cr>", options)
-- Neogit
map("n", "<leader>g", "<cmd>Neogit<cr>", options)

map("n", "K", ":call CocActionAsync('doHover')<cr>", options)
map("n", "<leader>r", ":call CocActionAsync('rename')<cr>", options)
map("n", ",ca", ":CocAction<cr>", options)

local view = require "nvim-tree.view"

function toggle_nvim_tree()
  if view.is_visible() then
    vim.cmd(":NvimTreeClose")
    require "bufferline.state".set_offset(0)
  else
    require "nvim-tree".find_file(true)
    require "bufferline.state".set_offset(30)
  end
end

-- Fallback to find_files() if git_files() can't find a .git directory
function project_files()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require "telescope.builtin".git_files, opts)
  if not ok then
    require "telescope.builtin".find_files(opts)
  end
end

