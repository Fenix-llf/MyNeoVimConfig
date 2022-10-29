filetype on
filetype plugin on
filetype plugin indent on

syntax on

call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}                
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

call plug#end()

let g:mapleader = " "
noremap s <nop>
noremap sl :set splitright<CR>:vsplit<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>
noremap sj :set splitbelow<CR>:split<CR>
noremap sk :set nosplitbelow<CR>:split<CR>

noremap <leader>l <c-w>l
noremap <leader>h <c-w>h
noremap <leader>j <c-w>j
noremap <leader>k <c-w>k

