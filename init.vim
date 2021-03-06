"basic settings
set nocompatible
filetype indent plugin on
syntax on
set encoding=utf-8
set conceallevel=2

"plugins
call plug#begin(stdpath('data') . '/plugged') 

"aesthetics
"Plug 'lewis6991/moonlight.vim'
"Plug 'rakr/vim-one'
"Plug 'sickill/vim-monokai'
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1

"functionality
Plug 'preservim/nerdtree'

Plug 'junegunn/goyo.vim'

Plug 'unblevable/quick-scope'
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=120

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>' 
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

"language specific
Plug 'lervag/vimtex', {'for': 'tex'} 
let g:tex_flavor = 'latex'      
let g:vimtex_quickfix_mode = 0
let g:vimtex_view_enabled = 0

Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
let g:tex_conceal = "abdgm"
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"

Plug 'neovimhaskell/haskell-vim', {'for': 'hs'}
let g:haskell_enable_typeroles = 1

call plug#end()

"some keybinds
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"more options
set showcmd
set hlsearch

set ignorecase
set smartcase

set autoindent
set nostartofline
set ruler
set mouse=a
set number relativenumber

set shiftwidth=4
set softtabstop=4
set expandtab

"above from vim.fandom.com/wiki/Example_vimrc

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set splitbelow splitright

"vnoremap <C-c> "+y
"map <C-v> "+P

set backspace=indent,eol,start

set termguicolors

"colorscheme moonlight 
"colorscheme monokai 
colorscheme nord 
"colorscheme one
"set background=dark

highlight QuickScopePrimary guifg='#ac5fff' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#ff5f5f' gui=underline ctermfg=81 cterm=underline

"more keybinds
set hidden
nnoremap <Up> <C-W><C-K>
nnoremap <Down> <C-W><C-J>
nnoremap <Left> <C-W><C-H>
nnoremap <Right> <C-W><C-L>
nnoremap <C-L> :bn<CR>
nnoremap <C-H> :bp<CR>
nnoremap <C-Q> :bd<CR>

nnoremap <CR> :w<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap <S-Space> <Space>

nnoremap <C-G> :Goyo<CR>

hi clear Conceal
