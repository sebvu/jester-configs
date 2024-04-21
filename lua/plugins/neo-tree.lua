local config = function()
	vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])
	vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
end

return {
	-- plugin to manage the file system and other tree like structures
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	config = config,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
}
