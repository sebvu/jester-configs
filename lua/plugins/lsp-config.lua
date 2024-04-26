return {
	{ -- portable package manager for installing LSPs, DAPs, linters and formatters.
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{ -- extension for mason.nvim that makes it easier to use lsp configs with mason.nvim
		"williamboman/mason-lspconfig.nvim",
		-- for lsp languge servers, refer to the github: https://github.com/williamboman/mason-lspconfig.nvim
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "bashls", "marksman", "tsserver", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			-- lspconfig.languageserver.setup {}
			-- :LspInfo to check lsps connected to current buffer
			lspconfig.lua_ls.setup({ -- lua language server
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({ -- C/C++ language server
				cmd = {
					"clangd",
					"--offset-encoding=utf-16",
					"--background-index",
					"--clang-tidy",
					"--header-insertion=iwyu",
					"--completion-style=detailed",
					"--function-arg-placeholders",
					"--fallback-style=llvm",
				},
			})
			lspconfig.bashls.setup({ -- bash language server
				capabilities = capabilities,
			})
			lspconfig.marksman.setup({ -- markdown language server
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({ -- javascript language server
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({ -- python language server
				capabilities = capabilities,
			})
		end,
	},
}
