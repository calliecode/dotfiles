set number
set relativenumber

nnoremap j gj
nnoremap k gk

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set encoding=utf8

set wrap

" ugh hate swap files
set nobackup
set nowb
set noswapfile

syntax enable
filetype plugin indent on

" rebind movement keys for workman layout
nnoremap y h
nnoremap n j
nnoremap e k
nnoremap o l

nnoremap y h
nnoremap n j
nnoremap e k
nnoremap o l

set lazyredraw

" rearranging displaced keys
" l = new line
" h = end of word
" k = yank
" j = next search
nnoremap l o
nnoremap h e
nnoremap k y
nnoremap j n

onoremap l o
onoremap h e
onoremap k y
onoremap j n

" Last yanked text gets auto-copied to the clipboard through xclip
" (don't like messing around with the + register)
au TextYankPost * call system('xclip -selection clipboard', v:event.regcontents) 
nnoremap <expr> <c-v> '<esc> :let @" = system(''xclip -selection clipboard -o'')<CR>:pu<CR>'
