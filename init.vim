call plug#begin()

Plug 'junegunn/vader.vim'
Plug 'arzg/vim-colors-xcode'

call plug#end()

echo "Hello there."

set hlsearch

let mapleader = ","
let maplocalleader = ","

nnoremap <localleader>ev :vsplit $MYVIMRC<cr>
nnoremap <localleader>sv :source $MYVIMRC<cr>

" surround current word with " (double quotes)
nnoremap <localleader>" viw<esc>a"<esc>hbi"<esc>lel

" surround current word with ' (single quotes)
nnoremap <localleader>" viw<esc>a'<esc>hbi'<esc>lel

" go back to normal mode (from insert mode)
inoremap <localleader>jk <esc>
" (need to disable escape key for above to work)
inoremap <esc> <nop>

" move to beginning of line
nnoremap <localleader>H 0
" move to end of line
nnoremap <localleader>L $

" """""""""""""""""""""""""""""""""""""""""""""
" shortcut keys for vimscript track on exercism
" """""""""""""""""""""""""""""""""""""""""""""
" save current file, and source it
nnoremap <localleader>m :w!<cr>:source %<cr>
" run a particular vader test file (assumes you have sourced it) 
nnoremap <localleader>vt :Vader allergies.vader<cr>
" move off the vader tab and back to your source file
nnoremap <c-tab> :<c-u>tabnext<cr>



