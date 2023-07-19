require('toggleterm').setup({
	direction = 'float',
	open_mapping = [[<c-\>]],
})

vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm direction=float<cr>', { noremap = true, silent = true })
vim.keymap.set('t', '<leader>tt', '<cmd>ToggleTerm direction=float<cr>', { noremap = true, silent = true })	
vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<cr>', { noremap = true, silent = true })
vim.keymap.set('t', '<leader>th', '<cmd>ToggleTerm direction=horizontal<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm ', { noremap = true, silent = true })

--Terminal:new {
--  cmd = string -- command to execute when creating the terminal e.g. 'top'
--  direction = string -- the layout for the terminal, same as the main config options
--  dir = string -- the directory for the terminal
--  close_on_exit = bool -- close the terminal window when the process exits
--  highlights = table -- a table with highlights
--  env = table -- key:value table with environmental variables passed to jobstart()
--  clear_env = bool -- use only environmental variables from `env`, passed to jobstart()
--  on_open = fun(t: Terminal) -- function to run when the terminal opens
--  on_close = fun(t: Terminal) -- function to run when the terminal closes
--  auto_scroll = boolean -- automatically scroll to the bottom on terminal output
--  -- callbacks for processing the output
--  on_stdout = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stdout
--  on_stderr = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stderr
--  on_exit = fun(t: Terminal, job: number, exit_code: number, name: string) -- function to run when terminal process exits
--}

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
local btop = Terminal:new({cmd = "btop", hidden = true})

function _lazygit_toggle()
  lazygit:toggle()
end

function _btop_toggle()
  btop:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>git", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>top", "<cmd>lua _btop_toggle()<CR>", {noremap = true, silent = true})
