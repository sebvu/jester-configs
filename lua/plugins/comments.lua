local config = function()
	require("Comment").setup()
end

return {
	-- easier to comment
	"numToStr/Comment.nvim",
	lazy = false,
	config = config,
}
