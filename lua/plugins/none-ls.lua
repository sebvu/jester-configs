return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim", -- for deprecated
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            -- debug = true,
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.rubocop,
                null_ls.builtins.formatting.rubocop,
                -- null_ls.builtins.diagnostics.eslint_d, (DEPRECATED)
                require("none-ls.diagnostics.eslint_d"), -- replacement
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                -- null_ls.builtints.diagnostic.ast_grep,
                -- null_ls.builtins.diagnostics.cpplint, (DEPRECATED)
                require("none-ls.diagnostics.cpplint"), -- replacement
                -- null_ls.builtins.diagnostics.trivy,
                null_ls.builtins.diagnostics.actionlint,
            },
        })
        -- anything that's able to respond to format attached to buffer will respond to this
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
