-- All keymaps

local opts = { noremap = true, silent = true }
-- -- Pane Navigation
-- vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts) -- Navigate Left
-- vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts) -- Navigate Down

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Vertically

-- easier indentation
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- general remaps
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move down half a page and center
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move up half a page and center
vim.keymap.set("n", "n", "nzz") -- move to next search result and center
vim.keymap.set("n", "N", "Nzz") -- move to previous search result and center

-- PLUGIN KEYMAPS

-- lsp-config.lua keymaps (overlayed by lspsaga, go to lsp-config.lua for more)
-- vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- display hover tooltip
-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- display definition (goto)
-- vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts) -- display code action

-- neo-tree.lua keymaps
vim.keymap.set("n", "<leader>e", ":Neotree<CR>", opts) -- open tree
vim.keymap.set("n", "<leader>q", ":Neotree close<CR>", opts) -- close tree
-- vim.keymap.set("n", "<leader>m", ":Neotree focus<CR>", opts) -- focus on tree

-- gitintegration.lua keymaps
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", opts) -- preview hunk inline

-- comments.lua keymap
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false, })
vim.api.nvim_set_keymap("v", "<C-_>", "gc", { noremap = false, })

-- nvim-tmux-navigator.lua keymaps
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)

-- vim-test.lua keymaps
-- vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", opts)
-- vim.keymap.set("n", "<leader>T", ":TestFile<CR>", opts)
-- vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", opts)
-- vim.keymap.set("n", "<leader>l", ":TestLast<CR>", opts)
-- vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", opts)

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
