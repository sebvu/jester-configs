return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				cpp = { "clang-format" },
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- Use a sub-list to run only the first available formatter
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				javascriptreact = { { "prettierd", "prettier" } },
				typescriptreact = { { "prettierd", "prettier" } },
				yaml = { "prettierd" },
				json = { "prettierd" },
				html = { "prettierd" },
				css = { "prettierd" },
				svelte = { "prettierd" },
				markdown = { "prettierd" },
				graphql = { "prettierd" },
				ruby = { "rubocop" },
				bash = { "shellharden" },
			},
			format_on_save = {
				lsp_fallback = true, -- if formatter isn't available, fall back to formatting through lsp
				async = false, -- run formatter in async mode
				timeout_ms = 500, -- timeout for formatter
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>gf", function()
			require("conform").format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
	opts = {},
}
