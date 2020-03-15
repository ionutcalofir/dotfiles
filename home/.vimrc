" ========== Plugins ==========

" automatic installation for plug vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')


" Plugins
" ------------------------------------------------------------------------------

" Fancy color scheme
Plug 'altercation/vim-colors-solarized'

" Tip 12 from Practical VIM
Plug 'tpope/vim-commentary'

" Tip 51 from Practical VIM.
Plug 'kana/vim-textobj-user'

" Tip 12 from Practical VIM
Plug 'kana/vim-textobj-entire'

" Tip 36 from Practical VIM
Plug 'tpope/vim-unimpaired'

" Tip 36 from Practical VIM
Plug 'tpope/vim-surround'

" Tip 84 from Practical VIM
Plug 'kana/vim-textobj-lastpat'

" Tip 86 from Practical VIM
Plug 'nelstrom/vim-visual-star-search'

" Tip 109 from Practical VIM
Plug 'mileszs/ack.vim'

" Navigate between VIM and tmux
Plug 'christoomey/vim-tmux-navigator'

" Closes brackets
Plug 'rstacruz/vim-closer'

" Indentation guide line
Plug 'nathanaelkane/vim-indent-guides'

" Nice tabline at the bottom and a theme for it
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git
Plug 'airblade/vim-gitgutter'

set packpath+=/usr/share/vim/vim80/ " matchit path
packadd! matchit " Tip 54 from Practical VIM

Plug 'neovim/nvim-lsp'

" ------------------------------------------------------------------------------

call plug#end()


" ========== General ==========

" Load custom settings
let b:match_words = '\<if\>:\<elif\>:\<else\>,' " matchit configuration

let g:netrw_liststyle = 3
let g:netrw_banner = 0

source ~/.vim/startup/settings.vim
source ~/.vim/startup/mappings.vim

" Load custom settings for plugins
source ~/.vim/startup/indentGuides.vim
source ~/.vim/startup/airline.vim

:lua << EOF
require'nvim_lsp'.pyls.setup{}
require'nvim_lsp'.clangd.setup{}
EOF

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>

set completeopt-=preview
autocmd Filetype python,c,cpp setl omnifunc=v:lua.vim.lsp.omnifunc

set grepprg=ack\ --nogroup\ --column\ $*
set grepformat=%f:%l:%c:%m
