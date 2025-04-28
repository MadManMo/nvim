return {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      triggers = {"<leader>"},
    }
  end,
}

