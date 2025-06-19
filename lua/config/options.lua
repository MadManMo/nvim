-- ~/.config/nvim/lua/config/options.lua

local opt = vim.opt

-- Indentation settings
opt.expandtab = true          -- Convert tabs to spaces
opt.tabstop = 2               -- Number of spaces per tab
opt.softtabstop = 2           -- Number of spaces for a soft tab
opt.shiftwidth = 2            -- Number of spaces for auto-indent

-- Line Numbers and Cursor Settings
opt.number = true             -- Show absolute line numbers
opt.relativenumber = false    -- Don't show relative line numbers
opt.cursorline = true         -- Highlight the current line
opt.signcolumn = "yes"        -- Always show sign column

-- Scrolling options
opt.scrolloff = 8             -- Keep 8 lines above/below the cursor when scrolling
opt.sidescrolloff = 8         -- Keep 8 columns left/right of the cursor

-- Line Wrapping
opt.wrap = false              -- Disable line wrapping for programming

-- Colors and Visuals
opt.termguicolors = true      -- Enable true colors in the terminal
opt.timeoutlen = 300          -- Time to wait for a mapped sequence in milliseconds
opt.updatetime = 300         -- Faster update time for completion and diagnostics

-- Clipboard Integration
opt.clipboard = "unnamedplus" -- Use system clipboard for yank/paste

-- Miscellaneous settings
opt.hidden = true             -- Allow hidden buffers
opt.completeopt = { "menu", "menuone", "noselect" } -- Autocomplete options

-- Mouse support
opt.mouse = "a"               -- Enable mouse in all modes

-- Search settings
opt.ignorecase = true         -- Ignore case when searching
opt.smartcase = true          -- Case-sensitive search if uppercase letters are used

-- Status column configuration
opt.statuscolumn = "%l %c %s"

-- Diagnostic signs (LSP)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

