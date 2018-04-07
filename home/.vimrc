" ========== Plugins ==========

" automatic installation for plug vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

" Theme for vim
Plug 'altercation/vim-colors-solarized' " fancy color scheme

" Filetree
Plug 'scrooloose/nerdtree'

" Commenter
Plug 'scrooloose/nerdcommenter'

" Autocomplete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Provides automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'

" Indentation guide line
Plug 'nathanaelkane/vim-indent-guides'

" When combined with a set of tmux key bindings, the plugin will allow you to
" navigate seamlessly between vim and tmux splits using a consistent set of hotkeys.
Plug 'christoomey/vim-tmux-navigator'

" Nice tabline at the bottom and a theme for it
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tabline for tmux
Plug 'edkolev/tmuxline.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()


" ========== General ==========

" Load custom settings
source ~/.vim/startup/settings.vim
source ~/.vim/startup/mappings.vim

" Load custom settings for plugins
source ~/.vim/startup/nerdTree.vim
source ~/.vim/startup/ycm.vim
source ~/.vim/startup/fzf.vim
source ~/.vim/startup/delimitMate.vim
source ~/.vim/startup/indentGuides.vim
source ~/.vim/startup/airline.vim
