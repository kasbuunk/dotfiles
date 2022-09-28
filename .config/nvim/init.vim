" Don't try to be vi compatible
set nocompatible
" Helps force plugins to load correctly when it is turned back on below
filetype off
set encoding=UTF-8

" Configure Plugins
lua require('kasbuunk')

" Netrw
" let g:netrw_browse_split = 2
" let g:netrw_liststyle = 3
let g:netrw_banner = 0

" General settings
set number
set relativenumber
set signcolumn=number
set nowrap
set ruler
set noshowmode
" set mouse=a
set colorcolumn=80
" set textwidth=99
set laststatus=2
set linebreak
set wildmode=longest,list,full
set wildmenu
set incsearch
set hlsearch

" set splitbelow

" Keymaps
let mapleader = " "
nnoremap <Leader>sv :source $MYVIMRC<CR>
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


" Whitespace
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
"set expandtab
set noshiftround

" For plugins to load correctly
filetype plugin indent on

" Turn on syntax highlighting
syntax on
syntax enable
"
" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

if (has("termguicolors"))
 set termguicolors
endif
colorscheme gruvbox

