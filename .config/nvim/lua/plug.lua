-- [[ plug.lua ]]

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua', 
    requires = 'kyazdani42/nvim-web-devicons',
  }

  -- FZF
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Improved syntax highlighting
  use {'nvim-treesitter/nvim-treesitter', tag = 'v0.9.0' }

  -- Theming
   -- start screen
  use { 'mhinz/vim-startify' }
  -- cursor jump 
  use { 'DanilaMihailov/beacon.nvim' }               
  -- status line
  use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  -- colorscheme
  use { 'Mofiqul/dracula.nvim' }
  use {'nyoom-engineering/oxocarbon.nvim'}

end)

