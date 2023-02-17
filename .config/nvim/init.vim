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
set nowrap&
set ruler
set cursorline
set noshowmode
set mouse=""
set colorcolumn=80
" set textwidth=99
set scrolloff=20
set laststatus=2
set linebreak
set wildmode=longest,list,full
set wildmenu
set incsearch
set hlsearch

" set splitbelow

" Keymaps
let mapleader = " "
let maplocalleader = ","
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap < :vertical res -5<CR>
nnoremap > :vertical res +5<CR>
nnoremap + :res +5<CR>
nnoremap - :res -5<CR>
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
"
" Debug
nmap <silent> <F5> :lua require('dap').continue()<CR>
nmap <silent> <F10> :lua require('dap').step_over()<CR>
nmap <silent> <F11> :lua require('dap').step_into()<CR>
nmap <silent> <F12> :lua require('dap').step_out()<CR>
nmap <silent> <leader>b :lua require('dap').toggle_breakpoint()<CR>
nmap <silent> <leader>dr :lua require('dap').repl.open()<CR>

nmap <silent> <leader>dt :lua require('dap-go').debug_test()<CR>

"nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
"nmap <silent> <leader>a :TestSuite<CR>
"nmap <silent> <leader>l :TestLast<CR>
"nmap <silent> <leader>g :TestVisit<CR>

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
filetype plugin on

" Turn on syntax highlighting
syntax on
syntax enable
"
" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬,space:·
" Uncomment this to enable by default:
set list " To enable by default
" Or use your leader key + l to toggle on/off
" map <leader>l :set list!<CR> " Toggle tabs and EOL

if (has("termguicolors"))
 set termguicolors
endif
colorscheme deus

autocmd BufWritePre *.go lua OrgImports(1000)
autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)

" Commentary
autocmd FileType go setlocal commentstring=//\ %s

" latex 
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Snippets
" let g:UltiSnipsExpandTrigger = '<c-k>'
" let g:UltiSnipsJumpForwardTrigger = '<c-k>'
" let g:UltiSnipsJumpBackwardTrigger = '<c-j>'
" nnoremap <leader>se <cmd>UltiSnipsEdit<cr>

