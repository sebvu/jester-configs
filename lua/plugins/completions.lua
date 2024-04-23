local config = function()
	local cmp = require("cmp")
	require("luasnip.loaders.from_vscode").lazy_load()

	cmp.setup({
		snippet = {
			-- REQUIRED - you must specify a snippet engine
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For 'luasnip' users
			end,
		},
		window = { -- windows displays
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }),
		}),
		sources = cmp.config.sources({
			-- { name = "nvim_lsp" },
			{ name = "luasnip" }, -- For luasnip users.
		}, {
			{ name = "buffer" },
		}),
	})
end

local autoclosebracketconfig = function()
	require("autoclose").setup()
end

return {
	{
		-- reaches out to any lsps attached to current buffer, and ask for completion recommendations
		"hrsh7th/cmp-nvim-lsp",
	},

	{
		-- github copilot (optional)
		"github/copilot.vim",
	},

	{
		-- auto close brackets
		"m4xshen/autoclose.nvim",
		config = autoclosebracketconfig,
	},

	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},

	{
		"hrsh7th/nvim-cmp",
		config = config,
	},
}
