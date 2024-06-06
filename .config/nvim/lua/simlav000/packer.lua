vim.cmd.packadd('packer.nvim')

-- Packer plugins
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim" 

  use {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      requires = { {"nvim-lua/plenary.nvim"} }
  } 

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
      'Exafunction/codeium.vim',
      requires = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
      },
      config = function()
        require("codeium").setup({})
      end
  }
  use { 'iamcco/markdown-preview.nvim', run = 'cd app && npx --yes yarn install' }
  use {'rose-pine/neovim', as = 'rose-pine'}
  use "rebelot/kanagawa.nvim"
  use 'mg979/vim-visual-multi'
  use 'junegunn/vim-easy-align'
  use 'https://github.com/junegunn/seoul256.vim.git'
  use 'fatih/vim-go'
  use { 'bluz71/vim-moonfly-colors', as = 'moonfly' }
  use { 'dracula/vim', as = 'dracula' }
  use { 'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
  use { 'nsf/gocode', rtp = 'vim' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)

