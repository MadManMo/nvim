return {
  {
    "water-sucks/darkrose.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("darkrose").setup({
        colors = {
          orange = "#F87757",
        },
        overrides = function(c)
          return {
            Class = { fg = c.magenta },
            ["@variable"] = { fg = c.fg_dark },
          }
        end,
        styles = {
          bold = true,
          italic = true,
          underline = true,
        },
      })
      vim.cmd.colorscheme("darkrose")
    end,
  },
}

