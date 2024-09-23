"""""""""""""""""""""""
""""""" GENERAL """""""
"""""""""""""""""""""""

" Set compatibility to vim only
set nocompatible

" Auto text wrapping
set wrap

" Encoding
set encoding=utf-8

" Show line number and relative line numbers 
set number
set number relativenumber

" Status bar
set laststatus=2

" Allow backspacing
set backspace=2

" Column number
set statusline+=col:\ %c 

" Indent width
set autoindent expandtab tabstop=2 shiftwidth=2

" Use system clipboard
set clipboard=unnamed

" Map cut, copy and paste to ctrl+x, ctrl+c and ctrl+v  
" - Visual mode
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
" - Insert mode
imap <C-v> <C-r><C-o>+

" Map undo and redo to ctrl+z and ctrl+y 
" - Normal mode
nnoremap <C-z> u
nnoremap <C-y> <C-r>
" - Insert mode
inoremap <C-z> <C-o>u
inoremap <C-y> <C-o><C-r>

" Map ctrl+k/j to move lines up/down
" - Normal mode
noremap <C-k>        :m -2 <enter>
noremap <C-j>        :m +1 <enter>
" - Insert mode
inoremap <C-k> <esc> :m -2 <enter>
inoremap <C-j> <esc> :m +1 <enter>

" Map save, save-quit, and discard-quit
nnoremap <C-s> :w<cr>   " (s)ave changes
nnoremap <C-d> :wq!<cr> " quit saving changes aka i'm (d)one
nnoremap <C-q> :qa!<cr> " (q)uit discarding changes

" Automatic word wrap
set textwidth=100

" Spell checking for Spanish and English
set spell spelllang=es,en

" Red underline for misspelled words
hi SpellBad cterm=underline ctermfg=red ctermbg=NONE 

"""""""""""""""""""""""
""""""" PLUGINS """""""
"""""""""""""""""""""""

" Install plugins
call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/NERDTree'
  Plug 'lervag/vimtex'
  Plug 'matze/vim-tex-fold'
call plug#end()

" NERDTree configuration
let NERDTreeShowHidden=1

" VimTeX configuration
"" Necessary for VimTeX to load properly. The "indent" is optional
filetype plugin indent on

"" Enable Vim's and neovim's syntax-related features
syntax enable

"" Viewer options
let g:vimtex_view_method = 'zathura'

