call plug#begin('~/.config/nvim/plugins')
  Plug 'kyazdani42/nvim-web-devicons' " Show Icon
  Plug 'kyazdani42/nvim-tree.lua' " File Explore
  Plug 'folke/tokyonight.nvim' " Theme
  Plug 'akinsho/nvim-bufferline.lua' " Tab Line
  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " Status Line
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Support Syntax Program
  Plug 'nvim-lua/plenary.nvim' " Git
  Plug 'lewis6991/gitsigns.nvim' " Git
  Plug 'jiangmiao/auto-pairs' " (),{},[],...
  Plug 'norcalli/nvim-colorizer.lua' " Color Hex, css
  Plug 'Yggdroot/indentLine' " Indent Line
  Plug 'tpope/vim-commentary' " Comment Line
  Plug 'mattn/emmet-vim' " Emmet Code
  Plug 'sbdchd/neoformat' " Format Code

  " Telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " Lsp
  Plug 'neovim/nvim-lspconfig' " Lsp 
  Plug 'hrsh7th/nvim-compe' " Complete Lsp
  Plug 'onsails/lspkind-nvim' " Icon Lsp
  Plug 'folke/trouble.nvim' " Show log error

  " Snippet
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
call plug#end()
