require "nvim-treesitter.configs".setup {
  autotag = {
    enable = true
  },
  highlight = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  },
  ensure_installed = {
    "javascript",
    "typescript",
    "tsx",
    "json",
    "html"
  }
}
