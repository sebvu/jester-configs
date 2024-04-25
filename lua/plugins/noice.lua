return {
    -- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
        require("noice").setup({
            routes = {
                {
                    view = "notify",
                    filter = { event = "msg_showmode" },
                }
            },
        })
    end,
    opts = {
        presets = {
            bottom_search = false,         -- use a classic bottom cmdline for search
            command_palette = false,       -- position the cmdline and popupmenu together
            long_message_to_split = false, -- long messages will be sent to a split
            inc_rename = false,            -- enables an input dialog for inc-rename.nvim
            -- lsp_doc_border = false, -- add a border to hover docs and signature help
        },
    },
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        { "MunifTanjim/nui.nvim" },
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        {
            "rcarriga/nvim-notify",
            config = function() -- added for transparency
                require("notify").setup({
                    background_colour = "#000000",
                    routes = {
                        {
                            view = "notify",
                            filter = { event = "msg_showmode" },
                        },
                    },
                })
            end,
        },
    },
}
