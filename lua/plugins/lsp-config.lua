-- mason.nvim config
local masonconfig = function()
    require("mason").setup()
end

-- mason-lspconfig config
local masonlspconfig = function()
    local require = require("mason-lspconfig")
    require.setup({
        -- ensure certain lsps are installed on our system
        ensure_installed = { "lua_ls", "tsserver", "bashls", "clangd", "markdown_oxide" }
    })
end

-- nvim-spconfig config
local nvimlspconfig = function()
        local lspconfig = require('lspconfig')
        -- lspconfig setup lsps
        lspconfig.lua_ls.setup({})
        lspconfig.tsserver.setup({})
        lspconfig.bashls.setup({})
        lspconfig.clangd.setup({})
        lspconfig.markdown_oxide.setup({})

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
end

return {
    {
        -- portable package manager for neovim
        "williamboman/mason.nvim",
        config = masonconfig,
    },

    {
        -- bridges gap between mason and lspconfig
        "williamboman/mason-lspconfig.nvim",
        config = masonlspconfig,
    },

    {
        -- set keybinds and setup communication neovim does between itself and lsp
        "neovim/nvim-lspconfig",
        config = nvimlspconfig,
        -- :LspInfo to check which lsps are communicating
    },
}

