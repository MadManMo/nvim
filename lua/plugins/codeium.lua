return {
  {
    "Exafunction/windsurf.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp" }, -- Optional for cmp integration
    config = function()
      require("codeium").setup({}) 
    end,
  },
}
