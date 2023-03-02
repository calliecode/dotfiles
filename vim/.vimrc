set number
set relativenumber

nnoremap j gj
nnoremap k gk

set tabstop=4
set shiftwidth=4
set expandtab

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
