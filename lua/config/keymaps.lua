local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Copy and Paste from system clipboard
map({ "n", "v" }, "<leader>y", '"+y', opts)    -- Yank to system clipboard
map({ "n", "v" }, "<leader>p", '"+p', opts)    -- Paste from system clipboard
map({ "n", "v" }, "<leader>P", '"+P', opts)    -- Paste before cursor from clipboard

-- Save and quit shortcuts
map("n", "<leader>w", ":w<CR>", opts)          -- Save
map("n", "<leader>q", ":q<CR>", opts)          -- Quit

