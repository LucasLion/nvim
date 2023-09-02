
vim.keymap.set('n', "<F2>", "<cmd>lua require'dap'.continue()<CR>")
vim.keymap.set('n', "<F3>", "<cmd>lua require'dap'.step_into()<CR>")
vim.keymap.set('n', "<F4>", "<cmd>lua require'dap'.step_over()<CR>")
vim.keymap.set('n', "<F5>", "<cmd>lua require'dap'.step_out()<CR>")
vim.keymap.set('n', "<leader>zb", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n', "<leader>zc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set('n', "<leader>zl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set('n', "<F8>", "<cmd>lua require'dap'.repl.open()<CR>")
--vim.keymap.set('n', "<leader>zz", "<cmd>lua require'dapui'.open()<CR>")

require("nvim-dap-virtual-text").setup()
require("dapui").setup()
require("dap").adapters.lldb = {
	type = "executable",
	command = "/usr/bin/lldb-vscode", -- adjust as needed
	name = "lldb",
}
require("dap").configurations.cpp = {
	{
		name = "Launch",
		type = "lldb",
		request = "launch",
		program = function()
			return vim.fn.input(
				"Path to executable: ",
				vim.fn.getcwd() .. "/",
				"file"
			)
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
		runInTerminal = false,
	},
}

-- open and close dapui
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end
