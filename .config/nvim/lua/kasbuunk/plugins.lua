local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- LSP
Plug 'neovim/nvim-lspconfig'

-- Statusbar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
--Plug 'edkolev/tmuxline.vim'
--Plug 'itchyny/lightline.vim'
Plug 'startup-nvim/startup.nvim'

-- ?
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'

-- Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

-- Telescope
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.0' })
Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'make' })

-- File explorer
Plug 'kyazdani42/nvim-web-devicons'
-- Plug 'kyazdani42/nvim-tree.lua'

-- Theme
Plug 'ajmwagar/vim-deus'
Plug 'bluz71/vim-moonfly-colors'
Plug 'savq/melange'
Plug 'jacoborus/tender.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/gruvbox-material'
Plug 'EdenEast/nightfox.nvim'

-- Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

-- Debug
Plug 'mfussenegger/nvim-dap'
--Plug 'Pocco81/DAPInstall.nvim'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'leoluz/nvim-dap-go'

Plug 'vim-test/vim-test'

Plug 'glacambre/firenvim'

-- LaTeX
Plug 'lervag/vimtex' -- compile and display LaTeX
-- Plug 'L3MON4D3/LuaSnip'
-- Plug 'SirVer/ultisnips' -- snippet engine
-- Plug 'honza/vim-snippets'-- more snippets

Plug 'editorconfig/editorconfig-vim'

vim.call('plug#end')
