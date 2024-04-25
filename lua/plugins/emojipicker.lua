return {
    "ziontee113/icon-picker.nvim",
    config = function()
        require("icon-picker").setup({ disable_legacy_commands = true })

        local opts = { noremap = true, silent = true }

        vim.keymap.set("n", "<Leader><Leader>i", ":IconPickerNormal<cr>", opts)
        vim.keymap.set("n", "<Leader><Leader>y", ":IconPickerYank<cr>", opts) --> Yank the selected icon into register
        -- vim.keymap.set("i", "<C-i>", ":IconPickerInsert<cr>", opts)
    end
}
