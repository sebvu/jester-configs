local opts = {
    ensure_installed = { -- any languages
        "efm", -- go is a dependency of efm
        "lua_ls",
    },
    automatic_installation = true
}

return {
    "williamboman/mason-lspconfig.nvim",
    opts = opts,
    event = "BufReadPre",
    dependencies = "williamboman/mason.nvim"
}
