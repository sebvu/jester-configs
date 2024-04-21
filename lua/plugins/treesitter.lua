local config = function()
    local require = require("nvim-treesitter.configs")
    require.setup({
        ensure_installed = {"lua", "javascript", "cpp"},
        highlight = { enable = true },
        indent = { enable = true },
    })
end

return { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = config,
}
