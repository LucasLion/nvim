vim.g.mapleader = " "

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>n', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.commands, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fl', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})
vim.keymap.set('n', '<leader>fb', builtin.builtin, {})
vim.keymap.set('n', '<leader>fB', builtin.buffers, {})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})

vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)

require('telescope').setup{
  defaults = {
	  initial_mode = "normal",
  },
  pickers = {
    find_files = {
     -- theme = "default", -- theme | dropdown | cursor | ivy
    }
  },
  extensions = {
    -- ...
  }
}

-- FILE BROWSER

--vim.api.nvim_set_keymap("n", "<leader>fd", ":Telescope file_browser<CR>", { noremap = true })

-- open file_browser with the path of the current buffer
--vim.api.nvim_set_keymap( "n", "<leader>fs", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })
vim.api.nvim_set_keymap(
   "n",
   "<space>fd",
   "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>",
   {noremap = true}
)

-- search in specific directory
function searchInDirectory()
	local directory = vim.fn.input("Directory: ")
	vim.cmd("Telescope find_files cwd=" .. directory)
end

vim.api.nvim_set_keymap("n", "<leader>fd", ":lua searchInDirectory()<CR>", { noremap = true, silent = true})
