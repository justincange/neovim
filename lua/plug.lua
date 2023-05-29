-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'

  use 'nvim-tree/nvim-tree.lua'

  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {'andymass/vim-matchup', event = 'VimEnter'}
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.

  use {
    'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }

  -- Plugins can have dependencies on other plugins
  use {
    'haorenW1025/completion-nvim',
    opt = true,
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  }


  -- Plugins can have post-install/update hooks
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  use 'morhetz/gruvbox'
  vim.cmd('colorscheme gruvbox')
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Use specific branch, dependency and run lua file after load
   use {   
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }

  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- You can specify multiple plugins in a single call

  -- You can alias plugin names
end)
