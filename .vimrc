set laststatus=2
set number

set clipboard=unnamed

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

set ts=4
set expandtab

syntax on
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <F4> <C-x><C-o>
nnoremap gn :bn<cr>
nnoremap gp :bp<cr>
nnoremap gd :bd<cr>  

vnoremap <C-c> "+y
vnoremap <C-d> "+d

set splitbelow
set splitright

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

let g:airline_symbols = {'space': ' ', 'paste': 'PASTE', 'maxlinenr': ' ', 'dirty': '⚡', 'crypt': '🔒', 'linenr': '', 'readonly': '', 'spell': 'SPELL', 'modified': '+', 'notexists': '', 'keymap': 'Keymap:', 'ellipsis': '...', 'branch': '', 'whitespace': ''}

" gvim config
if has("gui_running")
"    nmap <C-V> "+gP
"    imap <C-V> <ESC><C-V>i
    vmap <C-C> "+y
    colorscheme hydrangea
    set guifont=SauceCodePro\ Nerd\ Font\ Mono\ Semi-Bold\ 11
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
endif
