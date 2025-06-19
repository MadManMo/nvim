return {
  -- LSP Setup
  { 
    "neovim/nvim-lspconfig" 
  },
  
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",  -- ensures mason is updated
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {  -- List of servers to install
          "ts_ls", "clangd", "pyright", "lua_ls", "html", "cssls",
          "graphql", "emmet_ls", "cmake", "gopls", "marksman", "taplo"
        },
      })
    end,
  },

  -- Completion Setup
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",  -- Nvim-CMP LSP completion source
    },
  },

  -- Explicitly load cmp-nvim-lsp early
  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = true,  -- Lazy loading
  },

  -- Configuring LSPs with nvim-lspconfig
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
          capabilities = capabilities,  -- Set completion capabilities
        })
      end
    end,
  },
}

