local config = function()
    local theme = require("lualine.themes.dracula")
    theme.normal.c.bg = nil -- required when implementing transparent background

    require("lualine").setup({
        options = {
            theme = theme,
            globalstatus = true,
        },

        sections = {
            lualine_a = { "mode" },
            lualine_b = { "buffers" },
            lualine_x = {
                "encoding",
                "fileformat",
                "filetype",
                {
                    require("noice").api.statusline.mode.get,
                    cond = require("noice").api.statusline.mode.has,
                    color = { fg = "#ff9e64" },
                },
            },
            lualine_y = { "progress" },
            lualine_z = { "location" },
        },
    })
end

return {
    -- statusline plugin
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = config,
}
