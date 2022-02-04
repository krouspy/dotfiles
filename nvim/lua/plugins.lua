require "config.telescope"
require "config.nvim-treesitter"

require("packer").startup(
  function()
    -- Packages
    use "wbthomason/packer.nvim"
    -- Editor
    use "junegunn/fzf"
    use "b3nj5m1n/kommentary"
    use "windwp/nvim-autopairs"
    use "windwp/nvim-ts-autotag"
    use "preservim/tagbar"
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use {"lewis6991/gitsigns.nvim", requires = "nvim-lua/plenary.nvim"}
    use "lukas-reineke/indent-blankline.nvim"
    use "tpope/vim-surround"
    use {
      "nvim-telescope/telescope.nvim",
      requires = "nvim-lua/plenary.nvim"
    }
    use { "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" }
    use "danymat/neogen"

    -- LSP
    use {"neoclide/coc.nvim", branch = "release"}
    -- Languages
    use "tomlion/vim-solidity"
    use "cespare/vim-toml"
     -- UI
    use "norcalli/nvim-colorizer.lua"
    use {"romgrk/barbar.nvim", requires = "kyazdani42/nvim-web-devicons"}
    use "p00f/nvim-ts-rainbow"
    use "hoob3rt/lualine.nvim"
    use "kyazdani42/nvim-tree.lua"
    -- Colorschemes
    use "folke/tokyonight.nvim"
    use "joshdick/onedark.vim"
    use "rose-pine/neovim"
  end
)

require "neogit".setup {}
require "gitsigns".setup {}
require "nvim-autopairs".setup {}
require "colorizer".setup {}
require "neogen".setup {
  enabled = true
}

require "indent_blankline".setup {}
require "lualine".setup {
  options = {theme = "onedark"}
}

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}

