local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- install lazy.vim package manager
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- local opts = {}
local options = { noremap = true, silent = true }

-- contains all options
require("options")

-- load lazy
-- migrated plugins to plugins/
require("lazy").setup("plugins")

-- Pane Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", options) -- Navigate Left
vim.keymap.set("n", "<C-j>", "<C-w>j", options) -- Navigate Down
vim.keymap.set("n", "<C-k>", "<C-w>k", options) -- Navigate Up
vim.keymap.set("n", "<C-l>", "<C-w>l", options) -- Navigate Right

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", options) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", options) -- Split Vertically
