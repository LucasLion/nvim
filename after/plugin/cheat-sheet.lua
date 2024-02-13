

require("cheat-sheet").setup({
  auto_fill = {
    filetype = true,
    current_word = true,
  },

  main_win = {
    style = "minimal",
    border = "solid",
  },

  input_win = {
    style = "minimal",
    border = "solid",
  },
})

vim.keymap.set("n", "<C-s>", ":CheatSH<CR>")
