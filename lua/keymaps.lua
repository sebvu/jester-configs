-- All keymaps

local opts = { noremap = true, silent = true }

-- Pane Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
vim.keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
vim.keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
vim.keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Vertically

-- lsp-config.lua keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- display hover tooltip
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- display definition (goto)
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts) -- display code action

-- neo-tree.lua keymaps
vim.keymap.set("n", "<leader>e", ":Neotree<CR>", opts) -- open tree
vim.keymap.set("n", "<leader>q", ":Neotree close<CR>", opts) -- close tree
vim.keymap.set("n", "<leader>m", ":Neotree focus<CR>", opts) -- focus on tree

-- gitintegration.lua keymaps
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", opts) -- preview hunk inline

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

-- debugging.lua keymaps (located in file)
-- <Leader>dt - toggle breakpoint
-- <Leader>dc - continue
