-- mason.nvim config
local masonconfig = function()
	require("mason").setup()
end

-- mason-lspconfig config
local masonlspconfig = function()
-- local require = require("mason-lspconfig")
-- 	require.setup({
-- 		-- ensure certain lsps are installed on our system
-- 		ensure_installed = { "lua_ls", "tsserver", "bashls", "clangd", "marksman" },
-- 	})
-- end
--
-- -- nvim-spconfig config
-- local nvimlspconfig = function()
-- 	local capabilities = require("cmp_nvim_lsp").default_capabilities()
--
-- 	local lspconfig = require("lspconfig")
-- 	-- lspconfig setup lsps
-- 	lspconfig.lua_ls.setup({
-- 		capabilities = capabilities,
-- 	})
-- 	lspconfig.tsserver.setup({
-- 		capabilities = capabilities,
-- 	})
-- 	lspconfig.bashls.setup({
-- 		capabilities = capabilities,
-- 	})
-- 	lspconfig.clangd.setup({
-- 		capabilities = capabilities,
-- 	})
-- 	lspconfig.marksman.setup({
-- 		capabilities = capabilities,
-- 	})
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
