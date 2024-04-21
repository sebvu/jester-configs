return {
    "williamboman/mason.nvim",
    cmd = "Mason",
    event = "BufReadPre",
    lazy = false,
    config = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            }
        }
    }
}
