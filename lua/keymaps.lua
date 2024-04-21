-- All keymaps

-- Pane Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", {}) -- Navigate Left
vim.keymap.set("n", "<C-j>", "<C-w>j", {}) -- Navigate Down
vim.keymap.set("n", "<C-k>", "<C-w>k", {}) -- Navigate Up
vim.keymap.set("n", "<C-l>", "<C-w>l", {}) -- Navigate Right

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", {}) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", {}) -- Split Vertically

-- lsp-config.lua keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- display hover tooltip
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- display definition (goto)
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {}) -- display code action

-- neo-tree.lua keymaps
vim.keymap.set("n", "<leader>e", ":Neotree<CR>", {}) -- open tree
vim.keymap.set("n", "<leader>q", ":Neotree close<CR>", {}) -- close tree
vim.keymap.set("n", "<leader>m", ":Neotree focus<CR>", {}) -- focus on tree

-- telescope.lua keymaps (located in file)
-- <leader>ff - find files
-- <leader>fg - live grep
-- <leader>fb - buffer
-- <leader>fh - helper tags

-- none-ls.lua keymaps (located at file)
-- <leader>gf - auto format

-- completions.lua keymaps (located in file)
-- <C-b> - scroll docs -4
-- <C-f> - scroll docs 4
-- <C-Space> - complete
-- <C-e> - abort
-- <CR> - confirm
