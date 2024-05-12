return {
	{
		-- Find, Filter, Preview, Pick. All lua, all the time.
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim", "/BurntSushi/ripgrep", "sharkdp/fd" },
		config = function()
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = { "node_modules", ".git", "lazy%-lock.json", "pack" },
					mappings = {
						i = {
							["<C-j>"] = "move_selection_next",
							["<C-k>"] = "move_selection_previous",
						},
					},
				},

				pickers = {
					find_files = {
						theme = "dropdown",
						previewer = true,
						hidden = true,
					},
					live_grep = {
						theme = "dropdown",
						previewer = true,
					},
					buffers = {
						theme = "dropdown",
						previewer = true,
					},
				},
			})
		end,
		keys = {
			vim.keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", {}),
			vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", {}),
			vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {}),
			vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<CR>", {}),
			vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", {}),
			vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", {}),
		},
	},
	{
		-- makes lists show up as a cool ui
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
}
