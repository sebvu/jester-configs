local config = function()
    require("ibl").setup({
        exclude = {
            filetypes = {
                "lspinfo",
                "packer",
                "checkhealth",
                "help",
                "man",
                "dashboard",
                "",
            },
            -- filetypes = vim.g.exclude_filetypes,
        },
    })
end

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = config,
}
