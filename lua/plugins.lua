-- required by lazy, all plugins ran here
return {
    { -- catppuccin colorscheme
        "catppuccin/nvim", 
        lazy = false,
        name = "catppuccin", 
        priority = 1000 
    },

    { -- telescope
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { -- treesitter
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate" 
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
}


