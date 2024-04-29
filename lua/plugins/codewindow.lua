return {
    -- implement side codewindow
	"gorbit99/codewindow.nvim",
	config = function()
		local codewindow = require("codewindow")
		codewindow.setup()
		codewindow.apply_default_keybinds()
		-- <leader>mo - open the minimap
		-- <leader>mc - close the minimap
		-- <leader>mf - focus/unfocus the minimap
		-- <leader>mm - toggle the minimap

        vim.api.nvim_set_hl(0, 'CodewindowBorder', {fg = '#481352'})
	end,
}
