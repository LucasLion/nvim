-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
	    requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('ellisonleao/gruvbox.nvim')

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		-- LSP Support
			{'neovim/nvim-lspconfig'},
	  	  	{'williamboman/mason.nvim'},
	  	  	{'williamboman/mason-lspconfig.nvim'},

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
	}
	use('szw/vim-maximizer')
	use('42Paris/42header')
	use('github/copilot.vim')
	use('nvim-tree/nvim-web-devicons')
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
	use ('romgrk/barbar.nvim')
	use ('nvim-tree/nvim-tree.lua')
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use ('karb94/neoscroll.nvim')
	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
	--dap-tests
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
	use ('theHamsta/nvim-dap-virtual-text')
	use ('leoluz/nvim-dap-go')
	use ('nvim-telescope/telescope-dap.nvim')
	--dap-tests
	use ('Djancyp/cheat-sheet')
	use ('Exafunction/codeium.vim')
	use { 'folke/noice.nvim',
	  requires = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		{'MunifTanjim/nui.nvim'},
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		{'rcarriga/nvim-notify'},
		}
}
end)
