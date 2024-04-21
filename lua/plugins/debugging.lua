local config = function()
	local dap = require("dap")
	local dapui = require("dapui")
    local opts = { noremap = true, silent = true }

    require("dapui").setup()

	dap.listeners.before.attach.dapui_config = function()
		dapui.open()
	end
	dap.listeners.before.launch.dapui_config = function()
		dapui.open()
	end
	dap.listeners.before.event_terminated.dapui_config = function()
		dapui.close()
	end
	dap.listeners.before.event_exited.dapui_config = function()
		dapui.close()
	end

    -- all debuggers below!

	-- cpp adapter
	dap.adapters.gdb = {
		type = "executable",
		command = "gdb",
		args = { "-i", "dap" },
	}
    -- cpp configurations
	dap.configurations.cpp = {
		{
			name = "Launch",
			type = "gdb",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopAtBeginningOfMainSubprogram = false,
		},
	}

	vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, opts)
	vim.keymap.set("n", "<Leader>dc", dap.continue, opts)
end

return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
		config = config,
	},
}
