""""""""""""""""""""""""""""""
set cm=blowfish2
set nocompatible
set noswapfile
set nobackup
set number
set relativenumber
set smartindent
set tabstop=2
set shiftwidth=2
set backspace=2
set expandtab
""""""""""""""""""""""""""""""
syntax off
filetype on
""""""""""""""""""""""""""""""
let mapleader=","
set pastetoggle=<Leader>v
map <Leader>. :tabprevious<CR>
map <Leader>/ :tabnext<CR>
map Q <nop>
map K <nop>
nnoremap <PageUp> <nop>
noremap <PageDown> <nop>
""""""""""""""""""""""""""""""
autocmd BufRead,BufEnter ~/github/*icfpc*tbd*/*py setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType make setlocal noexpandtab shiftwidth=4 softtabstop=0
""""""""""""""""""""""""""""""
autocmd BufRead,BufEnter *.txt,*.md,*.markdown setlocal textwidth=72
""""""""""""""""""""""""""""""
