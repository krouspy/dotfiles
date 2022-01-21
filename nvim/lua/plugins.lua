require "config.telescope"
require "config.nvim-lspconfig"
require "config.nvim-cmp"
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
    use "ray-x/lsp_signature.nvim"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "onsails/lspkind-nvim"
    use "hrsh7th/nvim-cmp"
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
    use "hrsh7th/cmp-nvim-lsp"
    -- Languages
    use "tomlion/vim-solidity"
    use "cespare/vim-toml"
    -- Snippets
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"
     -- UI
    use "sidebar-nvim/sidebar.nvim"
    use "norcalli/nvim-colorizer.lua"
    use {"romgrk/barbar.nvim", requires = "kyazdani42/nvim-web-devicons"}
    use "p00f/nvim-ts-rainbow"
    use "hoob3rt/lualine.nvim"
    use "folke/tokyonight.nvim"
  end
)

require "neogit".setup {}
require "gitsigns".setup {}
require "nvim-autopairs".setup {}
require "colorizer".setup {}

require "lsp_signature".setup {}
require "indent_blankline".setup {}
require "lualine".setup {
  options = {theme = "tokyonight"}
}

require "sidebar-nvim".setup {
  open = true,
  initial_width = 30,
  hide_statusline = true,
  update_interval = 3000,
  sections = { "files", "diagnostics", "symbols", "git" },
  disable_closing_prompt = true,
}

