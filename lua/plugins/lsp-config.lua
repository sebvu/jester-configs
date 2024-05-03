return {
	{ -- portable package manager for installing LSPs, DAPs, linters and formatters.
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
		dependencies = {
			-- automatically install linters and formatters whenever neovim is up
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			config = function()
				require("mason-tool-installer").setup({
					ensure_installed = {
						"eslint_d",
						"stylua",
						"prettier",
						"prettierd",
						"clang-format",
						"shellharden",
						"markdownlint",
						"actionlint",
						"ruff",
						"black",
						"isort",
					},
				})
			end,
		},
	},
	{ -- extension for mason.nvim that makes it easier to use lsp configs with mason.nvim
		"williamboman/mason-lspconfig.nvim",
		-- for lsp languge servers, refer to the github: https://github.com/williamboman/mason-lspconfig.nvim
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "bashls", "marksman", "tsserver", "pyright", "yamlls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local signs = { Error = " ", Warn = " ", Hint = "", Info = "" }

			-- set signs for lsp diagnostics
			for type, icon in pairs(signs) do
				local hl = "LspDiagnosticsSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
			end

			local on_attach = function()
				vim.keymap.set("n", "<leader>gd", ":Lspsaga goto_definition<CR>", {}) -- go to finition
				vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", {}) -- see available code actions
				vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>", {}) -- show documentation for what is under cursor
				vim.keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", {}) -- smart rename
			end
			-- lspconfig.languageserver.setup({})
			-- :LspInfo to check lsps connected to current buffer
			lspconfig.lua_ls.setup({ -- lua language server
				capabilities = capabilities,
				on_attach = on_attach,
			})
			lspconfig.clangd.setup({ -- C/C++ language server
				capabilities = capabilities,
				on_attach = on_attach,
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
				on_attach = on_attach,
			})
			lspconfig.marksman.setup({ -- markdown language server
				capabilities = capabilities,
				on_attach = on_attach,
			})
			lspconfig.tsserver.setup({ -- javascript language server
				capabilities = capabilities,
				on_attach = on_attach,
			})
			lspconfig.pyright.setup({ -- python language server
				capabilities = capabilities,
				on_attach = on_attach,
			})
			lspconfig.yamlls.setup({ -- gitlab ci language server
				capabilities = capabilities,
				on_attach = on_attach,
			})
		end,
	},
}
