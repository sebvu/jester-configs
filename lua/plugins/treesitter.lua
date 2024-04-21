local config = function()
    local require = require("nvim-treesitter.configs")
    require.setup({
        ensure_installed = {"lua", "javascript"},
        highlight = { enable = true },
        indent = { enable = true },
    })
end

 return {
    -- simple and easy way to use the interface for tree-sitter and provide basic functionality
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = config,
}
