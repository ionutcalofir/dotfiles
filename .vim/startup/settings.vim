" The semicolon allows vim to search .tags recursively from the current
" up to the parent and so on
set tags=./.tags;

" Sets the unnamed register to the + register
set clipboard=unnamedplus

" Show line numbers
set number
set relativenumber

" Settings to show invisibles characters like atom
set list
set lcs=eol:¬,trail:·,tab:»·

" Adds a 80-column indicator
set colorcolumn=81
highlight colorcolumn ctermbg=grey
