require("flutter-tools").setup {} 
require("telescope").load_extension("flutter")

vim.keymap.set("n", "<leader>w", ":Telescope flutter commands<CR>")

-- alternatively you can override the default configs
require("flutter-tools").setup {
  widget_guides = {
    enabled = true,
  },
}
