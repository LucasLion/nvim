
vim.keymap.set('n', "<leader>zc", "<cmd>lua require'dap'.continue()<CR>")
vim.keymap.set('n', "<leader>zs", "<cmd>lua require'dap'.step_over()<CR>")
vim.keymap.set('n', "<leader>zi", "<cmd>lua require'dap'.step_into()<CR>")
vim.keymap.set('n', "<leader>zo", "<cmd>lua require'dap'.step_out()<CR>")
vim.keymap.set('n', "<leader>zb", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n', "<leader>zB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Condition du point d'arrêt: '))<CR>")
vim.keymap.set('n', "<leader>zp", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Message du point de journalisation: '))<CR>")
vim.keymap.set('n', "<leader>zr", "<cmd>lua require'dap'.repl.open()<CR>")

local dap = require('dap')
dap.adapters.python = {
	type = 'executable';
	command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
	args = { '-m', 'debugpy.adapter' };
}
