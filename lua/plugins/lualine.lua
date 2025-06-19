return {
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
          globalstatus = true,
          icons_enabled = true,
          always_divide_middle = true,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { { "branch" }, { "diff" } },
          lualine_c = {
            { "filename", path = 1 },
          },
          lualine_x = {
            { "diagnostics", sources = { "nvim_diagnostic" } },
            {
              function()
                local clients = vim.lsp.get_clients({ bufnr = 0 })  -- Updated to get_clients
                if #clients == 0 then
                  return "󰒕 No LSP"
                end
                local names = {}
                for _, client in ipairs(clients) do
                  table.insert(names, client.name)
                end
                return " " .. table.concat(names, ", ")
              end,
              color = { fg = "#a9b1d6" },
            },
            "encoding",
            "fileformat",
            "filetype",
          },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        tabline = {
          lualine_a = {
            {
              "buffers",
              icons_enabled = true,
              symbols = {
                modified = " ●",
                alternate_file = "#",
                directory = "",
              },
            },
          },
          lualine_z = { "tabs" },
        },
        extensions = { "nvim-tree", "quickfix" },
      })
    end,
  },
}

