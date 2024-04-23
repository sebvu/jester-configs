-- mason.nvim config
local masonconfig = function()
	require("mason").setup()
end

-- mason-lspconfig config
local masonlspconfig = function()
	local require = require("mason-lspconfig")
	require.setup({
		-- ensure certain lsps are installed on our system
		ensure_installed = { "lua_ls", "tsserver", "bashls", "clangd", "marksman" },
	})
end

-- nvim-spconfig config
local nvimlspconfig = function()
	require("neoconf").setup()
	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	local lspconfig = require("lspconfig")
	local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = "" }

	-- set signs for lsp diagnostics
	for type, icon in pairs(signs) do
		local hl = "LspDiagnosticsSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

	local on_attach = function(bufnr)
		local opts = { noremap = true, silent = true, buffer = bufnr }

		-- set keybinds
		vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
		vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declerations()<CR>", opts) -- go to decleration
		vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
		vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
		vim.keymap.set("n", "<leader>gD", "<cmd>Lspsaga goto_definition<CR>", opts) -- go to definition
		vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
		vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
		vim.keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show diagnostics for line
		vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursorj
		vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to prev diagnostic in buffer
		vim.keymap.set("n", "<leader>nd", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
		vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
		vim.keymap.set("n", "<leader>lo", "<cmd>LSoutlineTogle<CR>", opts) -- see outline on right hand side
	end
	---@diagnostic disable: missing-fields -- ignore annoying error
	-- setup lsps
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
	lspconfig.tsserver.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
	lspconfig.bashls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
	lspconfig.clangd.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		cmd = {
			"clangd",
			"--offset-encoding=utf-16",
			"--fallback-style=webkit",
		},
	})
	lspconfig.marksman.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
end

return {
	{
		-- portable package manager for neovim
		"williamboman/mason.nvim",
		config = masonconfig,
	},

	{
		-- bridges gap between mason and lspconfig
		"williamboman/mason-lspconfig.nvim",
		config = masonlspconfig,
	},

	{
		-- set keybinds and setup communication neovim does between itself and lsp
		"neovim/nvim-lspconfig",
		config = nvimlspconfig,
		-- :LspInfo to check which lsps are communicating
	},
}
