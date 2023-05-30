
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'rstacruz/vim-closer'

  use {'nvim-tree/nvim-tree.lua',
  requires = {'nvim-tree/nvim-web-devicons'}}
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

  use {
    'haorenW1025/completion-nvim',
    requires = {{'hrsh7th/vim-vsnip' }, {'hrsh7th/vim-vsnip-integ',  }}
  }

  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  use 'morhetz/gruvbox'
  vim.cmd('colorscheme gruvbox')
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

   use {   
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }

  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
end)
