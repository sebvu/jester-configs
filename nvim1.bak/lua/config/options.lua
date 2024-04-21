-- set options using vim.opt high level api

local opt = vim.opt

-- Tab / Indentation

opt.tabstop = 4 -- sets number of spaces a tab character takes up
opt.shiftwidth = 4 -- sets number of spaces for each level of indentation
opt.softtabstop = 4 -- when in insert mode, how many spaces occur in tab
opt.expandtab = true -- converts tabs into spaces when opening a file
opt.smartindent = true -- allows for auto indentation
opt.wrap = false -- if we have long lines, we don't want lines to 'wrap' back around

-- Search

opt.incsearch = true -- as you add letters to your search, will highlight all matches associated
opt.ignorecase = true -- ignore cases by default
opt.smartcase = true -- if there is capitalization, then start utilizing cases
opt.hlsearch = false -- highlighting searches

-- Appearence

opt.relativenumber = true -- relative line numbers
opt.number = true -- allows normal numbers
opt.termguicolors = false -- allow full color support in terminal (SET TO FALSE FOR UGLY COLORS)
opt.colorcolumn = '100' -- set a column where we're going to insert a line
opt.signcolumn = "yes" -- if a debugger is runner, keep gutter & necessary space available for insertion of debug icons
opt.cmdheight = 1 -- cmd area 1 high
opt.scrolloff = 5 -- if we scroll within x lines of bottom/top, start scrolling
opt.completeopt = "menuone,noinsert,noselect" -- define how the completion menu will behave:
  -- menuone - show 1 item in completion menu
  -- noinsert - nothing will be inserted by default
  -- noselect - nothing will be selected by default

-- Behavior
opt.hidden = true -- change buffers without saving
opt.errorbells = false -- disable error noises
opt.swapfile = false -- no swap files, (PLEASE CHECK ON YOUR OWN JESTER)
opt.backup = false -- no backup files, (PLEASE CHECK ON YOUR OWN JESTER)
opt.undodir = vim.fn.expand("~/.vim/undodir") -- want undos to be saved and available
opt.undofile = true -- true undofiles
opt.backspace = "indent,eol,start" -- works on indentation, eol, and starts
opt.splitright = true -- splitting terminal windows by default right
opt.splitbelow = true -- splitting terminal horizontally by default to the bottom
opt.autochdir = false -- automatically change directory we're in
-- opt.iskeyword:append("-") -- appends words seperated by - in to a whole word
-- opt.mouse:append('n') -- appending mouse in normal/visual
opt.mouse = ""
opt.clipboard:append("unnamedplus") -- add register + to clipbord, allows us to copy and paste outside and inside vim
opt.modifiable = true -- edit buffer you're in by default
opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
-- changes appearence of cursor (CHECK ON THIS JESTER CAUSE WE ARE GOING MOUSELESS)
opt.encoding = "UTF-8" -- encoding for current buffer you're in is going to be set to UTF-8
