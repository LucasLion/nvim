require("themery").setup({
  themes = {"gruvbox", 'everforest', 'gruvbox-material', 'edge', 'sonokai', 'tokyonight', 'catppuccin'},  -- Your list of installed colorschemes
  livePreview = true,
  transparentBackground = true,
})

vim.keymap.set('n', '<leader>tl', '<cmd>Themery<cr>')

require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
	strings = true,
	comments = true,
	operators = false,
	folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = true,
})

function ColorMyPencils(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(1, "NormalFloat", { bg = "none"})
end
ColorMyPencils()

-- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme gruvbox")
-- end themery block
