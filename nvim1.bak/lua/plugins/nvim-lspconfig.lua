local on_attach = require("util.lsp").on_attach

local config = function()
	require("neoconf").setup({})
	local cmp_nvim_lsp = require("cmp_nvim_lsp")
	local lspconfig = require("lspconfig")
	local capabilities = cmp_nvim_lsp.default_capabilities()

	local signs = { Error = "𝕏", Warning = "⚠ ", Hint = "💡", Information = " " }  
	-- helps with diagnostics
	for type, icon in pairs(signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

	-- lua lang. server
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = { -- custom settings for lua
			Lua = {
				-- make the language server recognize "vim" global
				diagnostics = {
					globals = { "vim" }, -- recognized by language server as global variable
				},
				workspace = {
					-- make language server aware of runtime files
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	})

	-- python
	lspconfig.pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	})

	local luacheck = require("efmls-configs.linters.luacheck") -- linter
	local stylua = require("efmls-configs.formatters.stylua") -- formatter
	local flake8 = require("efmls-configs.linters.flake8") -- formatter
	local black = require("efmls-configs.formatters.black") -- formatter

	-- configure efm server (general purpose language server for all document formatting and linting)
	lspconfig.efm.setup({
		filetypes = { -- be able to add more files
			"lua",
			"python",
		},
		init_options = { -- what is going to be available for this language server
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = { -- table of languages | language = linter, formatter
				lua = { luacheck, stylua },
				python = { flake8, black },
			},
		},
	})

	-- format on save
	-- any language files using this emf language server which has formatter (stylua) passed
	-- check if active client is efm, if it is, format as efm.
	local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
	vim.api.nvim_create_autocmd("BufWritePost", {
		group = lsp_fmt_group,
		callback = function()
			local efm = vim.lsp.get_active_clients({ name = "efm" })

			if vim.tbl_isempty(efm) then
				return
			end

			vim.lsp.buf.format({ name = "efm" })
		end,
	})
end

return {
    "hrsh7th/cmp-nvim-lsp",
	config = config,
	lazy = false,
	dependencies = {
		"windwp/nvim-autopairs",
		"williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
	},
}
