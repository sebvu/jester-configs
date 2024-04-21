local config = function()
    local theme = require("lualine.themes.dracula")
    theme.normal.c.bg = nil -- required when implementing transparent background

    local config = require("lualine")
    config.setup({
        options = {
            theme = theme,
            globalstatus = true,
        },

        sections = {
            lualine_a = { "mode" },
            lualine_b = { "buffers" },
            lualine_x = { "encoding", "fileformat", "filetype" },
            lualine_y = { "progress" },
            lualine_z = { "location" },
        },
    }) 
end

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = config,
}
