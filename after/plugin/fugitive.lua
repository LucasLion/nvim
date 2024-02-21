function gstatus_and_resize()
    vim.cmd(":botright Git")
    vim.cmd(":10wincmd _")
end

vim.keymap.set("n", "<leader>gs", gstatus_and_resize)
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")
vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit!<CR>")
vim.keymap.set("n", "<leader>gc", ":Gcommit<CR>")
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
vim.keymap.set("n", "<leader>gl", ":Git pull<CR>")

