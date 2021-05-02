" Enable solarized theme
set termguicolors
syntax enable
set background=dark
colorscheme solarized8

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
set colorcolumn=80
highlight colorcolumn ctermbg=0

" Use mouse support
set mouse=a

" Turn on the WiLd menu
set wildmenu
set wildmode=list:longest,full

" Highlight search results
set hlsearch

" Makes search starts as you type
set incsearch

" Highlight current line
set cursorline

" Block cursor
set guicursor=i-n-v-c:block-Cursor
