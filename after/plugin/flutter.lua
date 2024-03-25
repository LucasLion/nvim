
require("flutter-tools").setup {} -- use defaults
require("telescope").load_extension("flutter")
vim.keymap.set('n', '<leader>w', ':Telescope flutter commands<CR>')
