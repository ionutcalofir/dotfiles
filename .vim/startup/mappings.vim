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

" Unmaps the arrow keys
map <left> <Nop>
map <down> <Nop>
map <up> <Nop>
map <right> <Nop>
imap <left> <Nop>
imap <down> <Nop>
imap <up> <Nop>
imap <right> <Nop>
vmap <left> <Nop>
vmap <down> <Nop>
vmap <up> <Nop>
vmap <right> <Nop>
cmap <left> <Nop>
cmap <down> <Nop>
cmap <up> <Nop>
cmap <right> <Nop>
