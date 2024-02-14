
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

local plugins = {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.2',
	    dependencies = { {'nvim-lua/plenary.nvim'} }
	},
	-- themes
	'zaldih/themery.nvim',
	'ellisonleao/gruvbox.nvim',
	'sainnhe/everforest',
	'sainnhe/gruvbox-material',
	'sainnhe/edge',
	'sainnhe/sonokai',
	'folke/tokyonight.nvim',
	'catppuccin/nvim',
	{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
	'nvim-treesitter/playground',
	'theprimeagen/harpoon',
	'mbbill/undotree',
	'tpope/vim-fugitive',
	{
		'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
	  	  	{'williamboman/mason.nvim'},
	  	  	{'williamboman/mason-lspconfig.nvim'},
			{'jose-elias-alvarez/null-ls.nvim'},
			{'MunifTanjim/prettier.nvim'},

	  	  	-- Autocompletion
	  	  	{'hrsh7th/nvim-cmp'},
	  	  	{'hrsh7th/cmp-buffer'},
	  	  	{'hrsh7th/cmp-path'},
	  	  	{'saadparwaiz1/cmp_luasnip'},
	  	  	{'hrsh7th/cmp-nvim-lsp'},
	  	  	{'hrsh7th/cmp-nvim-lua'},

	  	  	-- Snippets
	  	  	{'L3MON4D3/LuaSnip'},
	  	  	{'rafamadriz/friendly-snippets'},
		}
	},
	'szw/vim-maximizer',
	'42Paris/42header',
	'github/copilot.vim',
	'nvim-tree/nvim-web-devicons',
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	'romgrk/barbar.nvim',
	'nvim-tree/nvim-tree.lua',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},
	--dap-tests
	{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"} },
	'theHamsta/nvim-dap-virtual-text',
	'nvim-telescope/telescope-dap.nvim',
	'jay-babu/mason-nvim-dap.nvim',
	'mfussenegger/nvim-dap-python',
	--dap-tests
	'Djancyp/cheat-sheet',
	{
		'folke/noice.nvim',
		dependencies = {
			{'MunifTanjim/nui.nvim'},
			{'rcarriga/nvim-notify'},
		}
	},
	'rmagatti/goto-preview',
	'karb94/neoscroll.nvim',
	'pocco81/auto-save.nvim',
	"folke/twilight.nvim",
	"folke/zen-mode.nvim",
}

require('lazy').setup(plugins, {})
