let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
imap <M-C-Right> <Plug>(copilot-accept-line)
imap <M-Right> <Plug>(copilot-accept-word)
imap <M-Bslash> <Plug>(copilot-suggest)
imap <M-[> <Plug>(copilot-previous)
imap <M-]> <Plug>(copilot-next)
imap <Plug>(copilot-suggest) <Cmd>call copilot#Suggest()
imap <Plug>(copilot-previous) <Cmd>call copilot#Previous()
imap <Plug>(copilot-next) <Cmd>call copilot#Next()
imap <Plug>(copilot-dismiss) <Cmd>call copilot#Dismiss()
inoremap <C-W> u
inoremap <C-U> u
nnoremap  zz
noremap <silent>  :TmuxNavigateLeft
noremap <silent> <NL> :TmuxNavigateDown
noremap <silent>  :TmuxNavigateUp
noremap <silent>  :TmuxNavigateRight
nnoremap  zz
noremap <silent>  :TmuxNavigatePrevious
vmap  gc
nmap  gcc
nnoremap <silent>   y :IconPickerYank
nnoremap <silent>   i :IconPickerNormal
nnoremap  fb :Telescope buffers
nnoremap  fg :Telescope live_grep
nnoremap  fo :Telescope oldfiles
nnoremap  ff :Telescope find_files
nnoremap  fh :Telescope help_tags
nnoremap  fk :Telescope keymaps
nnoremap <silent>  gp :Gitsigns preview_hunk_inline
nnoremap <silent>  q :Neotree close
nnoremap <silent>  e :Neotree
nnoremap  nd :NoiceDismiss
nnoremap <silent>  sh :split
nnoremap <silent>  sv :vsplit
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap * y/\V"
vnoremap < <gv
vnoremap > >gv
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xnoremap gb <Plug>(comment_toggle_blockwise_visual)
xnoremap gc <Plug>(comment_toggle_linewise_visual)
nnoremap gb <Plug>(comment_toggle_blockwise)
nnoremap gc <Plug>(comment_toggle_linewise)
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
noremap <silent> <C-Bslash> :TmuxNavigatePrevious
nnoremap <silent> <Plug>(git-conflict-prev-conflict) <Cmd>GitConflictPrevConflict
nnoremap <silent> <Plug>(git-conflict-next-conflict) <Cmd>GitConflictNextConflict
nnoremap <silent> <Plug>(git-conflict-theirs) <Cmd>GitConflictChooseTheirs
nnoremap <silent> <Plug>(git-conflict-none) <Cmd>GitConflictChooseNone
nnoremap <silent> <Plug>(git-conflict-both) <Cmd>GitConflictChooseBoth
nnoremap <silent> <Plug>(git-conflict-ours) <Cmd>GitConflictChooseOurs
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
xnoremap <Plug>(comment_toggle_blockwise_visual) <Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())
xnoremap <Plug>(comment_toggle_linewise_visual) <Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())
noremap <silent> <C-K> :TmuxNavigateUp
noremap <silent> <C-J> :TmuxNavigateDown
noremap <silent> <C-H> :TmuxNavigateLeft
vmap <C-_> gc
nmap <C-_> gcc
nnoremap <C-U> zz
nnoremap <C-D> zz
noremap <silent> <C-L> :TmuxNavigateRight
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set cmdheight=0
set completeopt=menuone,noinsert,noselect
set expandtab
set guicursor=a:NoiceHiddenCursor
set helplang=en
set nohlsearch
set ignorecase
set laststatus=3
set noloadplugins
set mouse=
set packpath=/tmp/.mount_nvimvLMzTr/usr/share/nvim/runtime
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/img-clip.nvim,~/.local/share/nvim/lazy/cmp-cmdline,~/.local/share/nvim/lazy/indent-blankline.nvim,~/.local/share/nvim/lazy/vim-tmux-navigator,~/.local/share/nvim/lazy/lspsaga.nvim,~/.local/share/nvim/lazy/presence.nvim,~/.local/share/nvim/lazy/vim-illuminate,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/transparent.nvim,~/.local/share/nvim/lazy/nvim-notify,~/.local/share/nvim/lazy/noice.nvim,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/telescope-ui-select.nvim,~/.local/share/nvim/lazy/hardtime.nvim,~/.local/share/nvim/lazy/git-conflict.nvim,~/.local/share/nvim/lazy/nui.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/neo-tree.nvim,~/.local/share/nvim/lazy/vim-highlightedyank,~/.local/share/nvim/lazy/neoconf.nvim,~/.local/share/nvim/lazy/neodev.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/cmp_luasnip,~/.local/share/nvim/lazy/LuaSnip,~/.local/share/nvim/lazy/nvim-cmp,~/.local/share/nvim/lazy/tailwindcss-colorizer-cmp.nvim,~/.local/share/nvim/lazy/none-ls-extras.nvim,~/.local/share/nvim/lazy/none-ls.nvim,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/alpha-nvim,~/.local/share/nvim/lazy/nvim-ts-autotag,~/.local/share/nvim/lazy/vim-be-good,~/.local/share/nvim/lazy/nvim-colorizer.lua,~/.local/share/nvim/lazy/markdown-preview.nvim,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/codewindow.nvim,~/.local/share/nvim/lazy/vim-obsession,~/.local/share/nvim/lazy/icon-picker.nvim,~/.local/share/nvim/lazy/copilot.vim,~/.local/share/nvim/lazy/cmp-nvim-lsp,~/.local/share/nvim/lazy/Comment.nvim,~/.local/share/nvim/lazy/catppuccin,/tmp/.mount_nvimvLMzTr/usr/share/nvim/runtime,/tmp/.mount_nvimvLMzTr/usr/share/nvim/runtime/pack/dist/opt/matchit,/tmp/.mount_nvimvLMzTr/usr/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/cmp-cmdline/after,~/.local/share/nvim/lazy/indent-blankline.nvim/after,~/.local/share/nvim/lazy/cmp_luasnip/after,~/.local/share/nvim/lazy/cmp-nvim-lsp/after,~/.local/share/nvim/lazy/catppuccin/after
set scrolloff=5
set shiftwidth=4
set smartcase
set smartindent
set softtabstop=4
set splitbelow
set splitright
set statusline=%#Normal#
set noswapfile
set tabstop=4
set termguicolors
set undodir=~/.vim/undodir
set undofile
set window=51
" vim: set ft=vim :
