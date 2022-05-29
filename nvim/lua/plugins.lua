require "config.telescope"
require "config.nvim-treesitter"
require "config.lsp"

local present, packer = pcall(require, "packer")

if not present then
  return
end

packer.startup(
  function(use)
    -- Packages
    use "wbthomason/packer.nvim"
    -- Editor
    use "junegunn/fzf"
    use "junegunn/fzf.vim"
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
    use "mvllow/modes.nvim"
    use "christoomey/vim-tmux-navigator"
    use "kdheepak/lazygit.nvim"
    use "folke/trouble.nvim"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-cmp" -- Autocompletion plugin
    use "hrsh7th/cmp-nvim-lsp" -- LSP source for nvim-cmp
    use "hrsh7th/cmp-nvim-lsp-signature-help"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip" -- Snippets source for nvim-cmp
    use "L3MON4D3/LuaSnip" -- Snippets plugin
		use "rafamadriz/friendly-snippets"
    use "jose-elias-alvarez/null-ls.nvim"
    use "onsails/lspkind.nvim"
    -- Languages
    use "tomlion/vim-solidity"
    use "cespare/vim-toml"
    use "pantharshit00/vim-prisma"
     -- UI
    use "norcalli/nvim-colorizer.lua"
    use {"romgrk/barbar.nvim", requires = "kyazdani42/nvim-web-devicons"}
    use "p00f/nvim-ts-rainbow"
    use "hoob3rt/lualine.nvim"
    use {"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons"}
    -- Colorschemes
    use "folke/tokyonight.nvim"
    use "joshdick/onedark.vim"
    use "rmehri01/onenord.nvim"
  end
)

require "neogit".setup {}
require "gitsigns".setup {}
require "nvim-autopairs".setup {}
require "colorizer".setup {}
require "neogen".setup {
  enabled = true
}
require "modes".setup {
  line_opacity = 0.3,
  set_cursor = true,
}

require "indent_blankline".setup {}
require "lualine".setup {
  options = {theme = "onedark"}
}
require "luasnip.loaders.from_vscode".lazy_load()

require "trouble".setup {}

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
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
    -- auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_open = '▼',
          arrow_closed = "▶"
        }
      }
    }
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
