function gstatus_and_resize()
    vim.cmd(":botright Git")
    vim.cmd(":10wincmd _")
end

vim.keymap.set("n", "<leader>gs", gstatus_and_resize)
