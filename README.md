![Jester Configs Banner](assets/JesterConfigs.png)

# jester-config

hi! i learn vim motions three weeks ago from 04/24/24, and now i setup my neovim configs!

this github page will show off my neovim config, and i will update it as i learn more about vimscript and neovim. :)

## files to edit upon new language

- lsp-config (lsps using mason)
    <!-- ~~treesitter~~ -->
  <!-- - none-ls (formatters and linters using mason) -->
- conformformatter
- linting
<!-- - DAP (read help dap.txt) -->

## issues

- clangd && cpplint has contrasting opinions, edit clangd configurations
- implement a debugger (no idea how to)

## v1 04/24/24

- 43 plugins

![Version 1](assets/version1nvim.png)

<details>
<summary>All version 1 changes</summary>

### v1.1 (4/24/24):

- added hardtime to get rid of bad habits

### v1.2 (4/26/24):

- rehauled lspconfigs, realized they weren't doing shit and i wasn't using half of the keymaps provided so i decided to ball and redid practically everything. stored it in bak/
- kept hardtimelearner in .bak for temporary on and off usages
- most likely going to organize all my lua files eventually, they're all kind of a mess and i'm debating how to organize my keymaps considering they're the biggest mess of it all
- took around 6 hours to properly get everything working, i'd say **v1.2** is the first working version of my nvim configs LOL

### v1.21 (4/27/24)

- the absolutely gorgeous feeling of not figuring out why your error level was warn and then copy and pasting a few lines and now having it at trace and eerything working perfectly fine? i'm totally down for that.

### v1.22 (5/02/24)

- stable so far, just added git-conflict.

### v1.23 (5/03/24)

- Replaced [none.ls](https://github.com/nvimtools/none-ls.nvim) with [conform](https://github.com/stevearc/conform.nvim) and [nvim-lint](https://github.com/mfussenegger/nvim-lint).
</details>
