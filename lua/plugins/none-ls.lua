local config = function()
	local null_ls = require("null-ls")

	null_ls.setup({
		sources = {
            -- implement formatters and diagnostics
			null_ls.builtins.formatting.stylua,
            null_ls.builtins.diagnostics.rubocop,
            null_ls.builtins.formatting.rubocop,
            null_ls.builtins.diagnostics.eslint_d,
            null_ls.builtins.formatting.prettier,
            null_ls.builtins.formatting.black,
            null_ls.builtins.formatting.isort,
            null_ls.builtins.diagnostics.cpplint,
		},
	})

	vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
end

return {
	-- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
	"nvimtools/none-ls.nvim",
	config = config,
}
