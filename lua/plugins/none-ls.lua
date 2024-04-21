local config = function()
	local null_ls = require("null-ls")

	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.stylua,
		},
	})

	vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
end

return {
	-- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
	"nvimtools/none-ls.nvim",
	config = config,
}
