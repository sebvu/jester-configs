local config = function()
    vim.keymap.set('n', "<leader>e", ":Neotree<CR>", {})
    vim.keymap.set('n', "<leader>q", ":Neotree close<CR>", {})
    vim.keymap.set('n', "<leader>m", ":Neotree focus<CR>", {})
end

return {
    -- plugin to manage the file system and other tree like structures
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = config,
}
