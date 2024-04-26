return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim", -- for deprecated
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                -- notes about rubocop
                -- using rubocop to lint this file, none-ls is wrapping command line in a 'generalized lsp' so our lsp client is talking to rubocop through generalized lsp
                -- (looks like lsp, but just a diagnostics tool)
                null_ls.builtins.formatting.rubocop,
                null_ls.builtins.diagnostics.rubocop,
                -- javascript and typescript
                -- null_ls.builtins.diagnostics.eslint_d, (DEPRECATED)
                require("none-ls.diagnostics.eslint_d"), -- replacement
                null_ls.builtins.formatting.prettier,
                -- python
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.isort,
                -- markdown
                null_ls.builtins.diagnostics.markdownlint,
                -- cpp
                -- null_ls.builtins.diagnostics.cpplint, (DEPRECATED)
                require("none-ls.diagnostics.cpplint"), -- replacement
            },
        })

        -- anything that's able to respond to format attached to buffer will respond to this
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        -- vim.keymap.set("n", "<leader>gf", ":lua vim.lsp.buf.format()<CR> | :normal gg=G``<CR>", {})
    end,
}
