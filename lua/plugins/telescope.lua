local telescopeconfig = function()
	local require = require("telescope.builtin")
	local opts = { noremap = true, silent = true }
	vim.keymap.set("n", "<leader>ff", require.find_files, opts) -- find files
	vim.keymap.set("n", "<leader>fg", require.live_grep, opts) -- grep
	vim.keymap.set("n", "<leader>fb", require.buffers, opts) -- display buffers
	vim.keymap.set("n", "<leader>fh", require.help_tags, opts) -- display help tags
end

local telescopeuiconfig = function()
	require("telescope").setup({
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown({}),
			},
		},
	})
	-- To get ui-select loaded and working with telescope, you need to call
	-- load_extension, somewhere after setup function:
	require("telescope").load_extension("ui-select")
end

return {
	{
		-- Find, Filter, Preview, Pick. All lua, all the time.
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = telescopeconfig,
	},

	{
		-- makes lists show up as a cool ui
		"nvim-telescope/telescope-ui-select.nvim",
		config = telescopeuiconfig,
	},
}
