-- lua/config/cmp.lua
local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm({ select = true })
      elseif require("codeium").Accept() then
        -- Accept a Windsurf AI suggestion
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      else
        require("codeium").CycleCompletions(-1)
      end
    end, { "i", "s" }),
    ["<S-CR>"] = cmp.mapping(function()
      require("codeium").CycleCompletions(-1)
    end, { "i", "s" }),
    ["<C-c>"] = cmp.mapping(function()
      require("codeium").Clear()
    end, { "i" }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "ultisnips" },
    { name = "buffer" },
    { name = "path" },
  }),
  experimental = {
    ghost_text = false,
  },
})

