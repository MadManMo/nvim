return {

  { 
    "neovim/nvim-lspconfig" 
  },
  
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ts_ls", "clangd", "pyright", "lua_ls", "html", "cssls",
          "graphql", "emmet_ls", "cmake", "gopls", "marksman", "taplo"
        },
      })
    end,
  },


  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
  },


  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = true,
  },


  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local servers = {
        "ts_ls", "clangd", "pyright", "lua_ls", "html", "cssls",
        "graphql", "emmet_ls", "cmake", "gopls", "marksman", "taplo",
      }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end
    end,
  },
}

