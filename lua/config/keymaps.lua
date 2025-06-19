-- ~/.config/nvim/lua/config/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- General: Comma-based shortcuts
map("n", ",w", "<cmd>w<CR>", opts)          -- Save file
map("n", ",q", "<cmd>q<CR>", opts)          -- Quit
map("n", ",W", "<cmd>wa<CR>", opts)         -- Save all files
map("n", ",Q", "<cmd>qa<CR>", opts)         -- Quit all
map("n", ",x", "<cmd>wq<CR>", opts)         -- Save and quit

-- Clipboard: System clipboard integration
map({ "n", "v" }, ",y", '"+y', opts)        -- Yank to system clipboard
map({ "n", "v" }, ",p", '"+p', opts)        -- Paste after cursor
map({ "n", "v" }, ",P", '"+P', opts)        -- Paste before cursor

-- Buffers: Buffer navigation and management
map("n", ",n", "<cmd>bnext<CR>", opts)      -- Next buffer
map("n", ",p", "<cmd>bprevious<CR>", opts)  -- Previous buffer
map("n", ",bd", "<cmd>bdelete<CR>", opts)   -- Delete current buffer
map("n", ",bl", "<cmd>buffer #<CR>", opts)  -- Switch to last buffer

-- Windows: Window navigation and splits
map("n", ",h", "<C-w>h", opts)              -- Move to left window
map("n", ",j", "<C-w>j", opts)              -- Move to below window
map("n", ",k", "<C-w>k", opts)              -- Move to above window
map("n", ",l", "<C-w>l", opts)              -- Move to right window
map("n", ",sv", "<cmd>vsplit<CR>", opts)    -- Vertical split
map("n", ",sh", "<cmd>split<CR>", opts)     -- Horizontal split
map("n", ",sc", "<cmd>close<CR>", opts)     -- Close window

-- Windsurf (Codeium): AI assistant keybindings
map("i", "<Tab>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })        -- Accept suggestion
map("i", "<S-Tab>", function()
  return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })       -- Cycle forward through suggestions
map("i", "<S-CR>", function()
  return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })       -- Cycle backward through suggestions
map("i", "<C-c>", function()
  return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })       -- Clear current suggestion
map("n", ",ct", "<cmd>Codeium Toggle<CR>", opts)  -- Toggle Windsurf on/off

-- Editing: Common editing shortcuts
map("n", ",/", "<cmd>nohlsearch<CR>", opts) -- Clear search highlights
map("n", "[d", vim.diagnostic.goto_prev, opts)     -- Previous diagnostic
map("n", "]d", vim.diagnostic.goto_next, opts)     -- Next diagnostic
