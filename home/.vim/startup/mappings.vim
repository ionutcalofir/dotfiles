" Makes Space the leader key
let mapleader = "\<Space>"

" Quick save
nnoremap <Leader>w :w<CR>

" Closes the current buffer without losing the split window
map <Leader>bd :bp <BAR> bd #<CR>

" Moves to the next buffer
map <Leader>l :bn<CR>

" Moves to the previous buffer
map <Leader>h :bp<CR>

" Opens a new empty buffer
map <Leader>t :enew<CR>

" Shows all buffers
map <Leader>bl :ls<CR>

" Treats long lines as break lines (useful when moving around in them)
map j gj
map k gk

map <F32> oimport ipdb; ipdb.set_trace()<ESC>:w<CR>
map <F8> :!g++ -std=c++17 -Wshadow -Wall -o main % -O2 -Wno-unused-result<CR>
map <F9> :!g++ -std=c++17 -Wshadow -Wall -o main % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG<CR>
