local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- install lazy.vim package manager
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- contains all options
require("options")

-- all keymaps
require("keymaps")

-- load lazy
-- migrated plugins to plugins/
require("lazy").setup("plugins")
