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
Plug 'ishan9299/nvim-solarized-lua'

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

" Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " :TSUpdate recommendetion from authors

set packpath+=/usr/share/vim/vim80/ " matchit path
packadd! matchit " Tip 54 from Practical VIM

Plug 'neovim/nvim-lspconfig'

Plug 'nvim-lua/completion-nvim'

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
source ~/.vim/startup/gitgutter.vim

" Load lua
source ~/.vim/startup/lua.vim

set grepprg=ack\ --nogroup\ --column\ $*
set grepformat=%f:%l:%c:%m

source ~/.vim/startup/filetype.vim
