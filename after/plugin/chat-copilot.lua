require("CopilotChat").setup {
	debug = true, -- Enable debugging

	-- shortcur :CopilotChatToggle
	vim.keymap.set("n", "<leader>i", ":CopilotChatToggle<CR>", { noremap = true, silent = true }),
	vim.keymap.set("n", "<leader>r", ":CopilotChatStop<CR>", { noremap = true, silent = true }),
	vim.keymap.set("v", "<leader>i", ":CopilotChat<CR>", { noremap = true, silent = true }),

	window = {
		width = 0.5,
		height = 0.5,
		border = "single",
		layout = "float",
	},
}
