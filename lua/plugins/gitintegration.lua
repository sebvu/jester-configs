local config = function()
	require("gitsigns").setup()
end

return {
	{
		"tpope/vim-fugitive",
	},

	{
		"lewis6991/gitsigns.nvim",
		config = config,
	},
}
