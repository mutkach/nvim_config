-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
        {'neovim/nvim-lspconfig', opt=false},
        {'hrsh7th/nvim-cmp', opt=false},
        {'hrsh7th/cmp-nvim-lsp', opt=false},
        {'L3MON4D3/LuaSnip', opt=false},
        {'williamboman/mason.nvim', opt=false},
        {'williamboman/mason-lspconfig.nvim', opt=false},
    }
  }

  use {
      'atelierbram/vim-colors_atelier-schemes'
  }

  use {
      'sontungexpt/witch'
  }

  use {
      'tpope/vim-surround'
  }

  use {
      'ericbn/vim-solarized'
  }
  use {
      'projekt0n/github-nvim-theme'
  }

  use {
      'folke/trouble.nvim'
  }


  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }


end)
