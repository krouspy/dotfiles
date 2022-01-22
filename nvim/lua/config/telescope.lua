local map = vim.api.nvim_set_keymap

local actions = require "telescope.actions"
require "telescope".setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["<c-c>"] = actions.close
      }
    },
    file_ignore_patterns = {"node_modules", "fonts", "icons"}
  }
}

