local config = function()
	local null_ls = require("null-ls")

	null_ls.setup({
		sources = {
            -- implement formatters and diagnostics
			null_ls.builtins.formatting.stylua,
            null_ls.builtins.diagnostics.rubocop,
            null_ls.builtins.formatting.rubocop,
            -- null_ls.builtins.diagnostics.eslint_d, (DEPRECATED)
            require("none-ls.diagnostics.eslint_d"), -- replacement
            null_ls.builtins.formatting.prettier,
            null_ls.builtins.formatting.black,
            null_ls.builtins.formatting.isort,
            -- null_ls.builtins.diagnostics.cpplint, (DEPRECATED)
            require("none-ls.diagnostics.cpplint"), -- replacement
		},
	})

	vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
end

return {
    -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
	-- CLI tools!!
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim", -- for deprecated
    },
	config = config,
}
