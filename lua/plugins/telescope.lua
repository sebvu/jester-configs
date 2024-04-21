local config = function()
    local require = require("telescope.builtin")
    vim.keymap.set('n', '<leader>ff', require.find_files, {})
    vim.keymap.set('n', '<leader>fg', require.live_grep, {})
    vim.keymap.set('n', '<leader>fb', require.buffers, {})
    vim.keymap.set('n', '<leader>fh', require.help_tags, {})
end

return { 
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = config,
}
