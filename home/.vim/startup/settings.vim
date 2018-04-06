" Tabs to spaces and indentation
filetype plugin indent on

" enable solarized theme
syntax enable
set background=dark
colorscheme solarized

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

" Make the backspace to work like in most other programs
set backspace=indent,eol,start
