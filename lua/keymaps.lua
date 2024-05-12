-- All keymaps

local opts = { noremap = true, silent = true }
-- -- Pane Navigation
-- vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts) -- Navigate Left
-- vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts) -- Navigate Down

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sq", ":close<CR>", opts) -- Split Vertically

-- easier indentation
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- general remaps
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move down half a page and center
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move up half a page and center

-- PLUGIN KEYMAPS

-- noice.lua keymaps (currently not being used)
vim.keymap.set("n", "<leader>nd", ":NoiceDismiss<CR>", { desc = "Dismiss Noice Message" }) -- dismiss current noice notification

-- lspsaga.lua for lspconfigs keymaps
-- vim.keymap.set("n", "<leader>gd", ":Lspsaga goto_definition<CR>", opts) -- go to finition
-- vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", opts) -- see available code actions
-- vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
-- vim.keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", opts) -- smart rename

-- neo-tree.lua keymaps
vim.keymap.set("n", "<leader>e", ":Neotree<CR>", opts) -- open tree
vim.keymap.set("n", "<leader>q", ":Neotree close<CR>", opts) -- close tree
-- vim.keymap.set("n", "<leader>m", ":Neotree focus<CR>", opts) -- focus on tree

-- gitintegration.lua keymaps
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", opts) -- preview hunk inline

-- comments.lua keymap
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gc", { noremap = false })

-- nvim-tmux-navigator.lua keymaps
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)

-- img-clipboarder-paster.lua keymaps
vim.keymap.set("n", "<C-p>", ":PasteImage<CR>", opts)

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

-- emoji picker stuff
-- vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
-- vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
-- vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
