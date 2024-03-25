require("flutter-tools").setup {} 
require("telescope").load_extension("flutter")

vim.keymap.set("n", "<leader>w", ":Telescope flutter commands<CR>")

require("flutter-tools").setup {
  widget_guides = {
    enabled = true,
  },
}
>>>>>>> 0c7cd0d49dfbc718ecf182dc9df04eb86e71c435
