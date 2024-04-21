local config = function()
	require("ibl").setup()
end

return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = config,
}
