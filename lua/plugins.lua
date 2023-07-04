local packer = require('packer')
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- lua plugin manager
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }

  }
  --use 'mrcjkb/haskell-tools.nvim'
  use "nvim-treesitter/nvim-treesitter"
  use "nvim-treesitter/playground"
  use "panozzaj/vim-autocorrect"
  use "nyoom-engineering/oxocarbon.nvim"
  use "mbbill/undotree"
  use "xiyaowong/transparent.nvim"
  use "tpope/vim-fugitive"
  use "tpope/vim-surround"
  use "NeogitOrg/neogit"
  use "nvim-tree/nvim-web-devicons"
  use "nvim-treesitter/nvim-treesitter-context"
  use 'Vigemus/iron.nvim'
  use 'mfussenegger/nvim-dap'
  use "nvim-lua/plenary.nvim"
  use "nvim-tree/nvim-tree.lua"
  use "phaazon/hop.nvim"
  use "pineapplegiant/spaceduck"
  use 'neovim/nvim-lspconfig'
--  use 'cohama/lexima.vim' -- auto close parenthesis
  use 'atelierbram/vim-colors_atelier-schemes'
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

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
end)
