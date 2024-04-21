return { -- Defines a lua table to be returned.
	"nvim-tree/nvim-tree.lua", -- Specified path to nvim-tree plugin script on github.
	lazy = false, -- If true, only loads contents when expanded. If false, loads all directories once opened.
	config = {
    filters = {
		  dotfiles = false,
	  },
  }
}
