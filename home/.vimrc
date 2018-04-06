" ========== Plugins ==========

" automatic installation for plug vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

" Theme for vim
Plug 'altercation/vim-colors-solarized' "fancy color scheme

" Filetree
Plug 'scrooloose/nerdtree'

" Autocomplete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

call plug#end()


" ========== General ==========

" Load custom settings
source ~/.vim/startup/settings.vim
source ~/.vim/startup/mappings.vim

" Load custom settings for plugins
source ~/.vim/startup/nerdTree.vim
source ~/.vim/startup/ycm.vim
