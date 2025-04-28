-- ~/.config/nvim/lua/plugins/treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "css",
      "html",
      "javascript",
      "latex",
      "norg",
      "scss",
      "svelte",
      "tsx",
      "typst",
      "vue",
      "regex",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    auto_install = true,
  },
}

