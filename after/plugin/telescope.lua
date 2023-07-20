vim.g.mapleader = " "

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.commands, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})
vim.keymap.set('n', '<leader>fb', builtin.builtin, {})

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)

require('telescope').setup{
  defaults = {
    -- ...
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
