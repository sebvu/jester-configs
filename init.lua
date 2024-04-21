-- using meta-accessors expose vims lower level api to lua runtime

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")

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

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
local opts = {}

require("lazy").setup(plugins, opts) -- load lazy
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
