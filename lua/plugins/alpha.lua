local quotes = {
	"The only way to do great work is to love what you do. - Steve Jobs",
	"In the middle of difficulty lies opportunity. - Albert Einstein",
	"The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
	"Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
	"The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
    "The seats are empty, the theatre is dark... why do you keep acting? - M. Gaby Cayambe Tenemaza",
    "I must change my life so I can live it, not wait for it. - M. Gaby Cayambe Tenemaza",
    "The biggest risk is not taking a risk at all - M. Gaby Cayambe Tenemaza",
}

local function getrandomquote()
	math.randomseed(os.time())
	return quotes[math.random(#quotes)]
end

local config = function()
	-- alpha-config.lua

	local status_ok, alpha = pcall(require, "alpha")
	if not status_ok then
		return
	end

	local dashboard = require("alpha.themes.dashboard")
	dashboard.section.header.val = {

		-- [[          ▀████▀▄▄              ▄█ ]],
		-- [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
		-- [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
		-- [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
		-- [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
		-- [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
		-- [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
		-- [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
		-- [[   █   █  █      ▄▄           ▄▀   ]],
    [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⣪⣭⣿⣷⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠤⢤⢔⡾⣹⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⢰⢳⣿⣿⣿⠋⣻⣿⣿⣿⣿⣿⣿⣾⣿⠟⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⢀⠔⠁⠀⠀⠀⢸⣼⣷⣻⣧⣴⣿⣏⣿⣿⣿⣿⣿⣿⣿⣶⣶⣦⠤ ]],
    [[ ⠀⠀⠀⠀⢠⠇⠀⠀⠀⠀⠀⠈⢿⣿⣷⣿⣏⡿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠁⠀ ]],
    [[ ⠀⠀⠀⢀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⣿⣿⣝⣿⣯⣾⠋⣇⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡄⠀⠀⠙⣽⣝⠋⢡⣯⣀⠘⢦⡀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⡷⡁⠀⡄⠀⢠⠻⠀⠀⠀⢸⠙⠀⠀⠀⠙⡇⢹⣧⠛⠂⠀⢤⣉⠢⡀⠀⠀ ]],
    [[ ⡠⢊⠚⢇⣰⢣⠀⡞⠒⠣⠀⠀⠘⡄⠘⠓⠲⢆⣳⠀⠀⣠⣄⣀⣀⠙⢯⣾⡄⠀ ]],
    [[ ⣇⣇⡌⠈⡜⡌⢳⣧⣤⣄⡑⠄⣀⣳⢀⣠⣤⣴⣾⡆⠀⣿⠖⣠⣮⠀⠀⣿⠇⠀ ]],
    [[ ⠈⠛⢇⠀⠿⠷⡘⣿⢙⠿⡏⠀⠈⠉⢻⣻⣿⡏⢹⡟⣢⣿⣟⡻⠋⢀⡴⠁⠀⠀ ]],
    [[ ⠀⠀⠈⠢⢤⣀⣋⡿⢮⡉⠁⠀⠀⠀⠈⢉⣙⠷⠛⠺⣿⣙⣛⠭⠝⠋⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡩⠒⠶⠲⠞⠓⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣵⣕⣉⣫⣿⣦⠀⠱⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡾⡿⡟⣻⣿⡏⠱⣮⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⠀⠀⣰⢿⡛⣿⣾⣜⣾⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⢀⣴⣿⣾⣿⣿⣿⣿⣿⣿⣾⡏⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⢀⣵⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣯⣿⣿⠟⠃⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠟⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⠀⠀⠈⠻⠿⠿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣽⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
	}

	local function footer()
		return getrandomquote()
	end

	dashboard.section.footer.val = footer()

	dashboard.section.buttons.val = {
		dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
		dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
        dashboard.button("r", "Check README.md", ":edit ~/.config/nvim/README.md<CR>"),
		dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
	}

	dashboard.section.footer.opts.hl = "Type"
	dashboard.section.header.opts.hl = "Include"
	-- dashboard.section.buttons.opts.hl = "Keyword"

	dashboard.opts.opts.noautocmd = true
	alpha.setup(dashboard.opts)

	--     local alpha = require("alpha")
	--         local dashboard = require("alpha.themes.startify")
	--
	--         dashboard.section.header.val = {
	--             [[                                                                       ]],
	--             [[                                                                       ]],
	--             [[                                                                       ]],
	--             [[                                                                       ]],
	--             [[                                                                     ]],
	--             [[       ████ ██████           █████      ██                     ]],
	--             [[      ███████████             █████                             ]],
	--             [[      █████████ ███████████████████ ███   ███████████   ]],
	--             [[     █████████  ███    █████████████ █████ ██████████████   ]],
	--             [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	--             [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	--             [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	--             [[                                                                       ]],
	--             [[                                                                       ]],
	--             [[                                                                       ]],
	--         }
	--
	--         alpha.setup(dashboard.opts)
	-- end
	--
end

return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = config,
}
