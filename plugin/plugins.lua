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
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'atelierbram/vim-colors_atelier-schemes' }
  use { 'rktjmp/fwatch.nvim'  }

  use { 'maxmx03/solarized.nvim'  }
  use { 'calind/selenized.nvim'  }
  use { 'chriskempson/base16-vim' }

  use { 'folke/trouble.nvim'  }
  use {
      'stevearc/oil.nvim',
      run = require("oil").setup()
  }
  --use {'ShinKage/idris2-nvim', requires = {'neovim/nvim-lspconfig', 'MunifTanjim/nui.nvim'},
  --    run = require('idris2').setup({})
  --}
  use {
      'brenoprata10/nvim-highlight-colors',
      run = require("nvim-highlight-colors").setup()
  }
  use { "folke/which-key.nvim" }

end)
