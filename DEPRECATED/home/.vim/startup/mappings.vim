" Makes Space the leader key
let mapleader = "\<Space>"

" Quick save
nnoremap <Leader>w :w<CR>

" Closes the current buffer even if there is only one buffer
map <Leader>bd :bp <BAR> bd #<CR>

" Treats long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Insert a break point for debugging in python
map <F32> oimport ipdb; ipdb.set_trace()<ESC>:w<CR>

" From https://github.com/Errichto/youtube/wiki/Linux-&-Geany-Setup
" F8 (fast)
" F9 (safe, default)
map <F8> :!g++ -std=c++17 -Wshadow -Wall -o main % -O2 -Wno-unused-result<CR>
map <F9> :!g++ -std=c++17 -Wshadow -Wall -o main % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG<CR>
