set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Theme for vim
Plugin 'chriskempson/vim-tomorrow-theme'

" Provides automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'Raimondi/delimitMate'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

" When combined with a set of tmux key bindings, the plugin will allow you to
" navigate seamlessly between vim and tmux splits using a consistent set of hotkeys.
Plugin 'christoomey/vim-tmux-navigator'

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" Filetree
Plugin 'scrooloose/nerdtree'

" Commenter
Plugin 'scrooloose/nerdcommenter'

" Nice tabline at the bottom and a theme for it
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Tabline for tmux
Plugin 'edkolev/tmuxline.vim'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Shows the list of buffers in the command bar
Plugin 'bling/vim-bufferline'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Load custom settings for plugins
source ~/.vim/startup/netrw.vim
source ~/.vim/startup/ycm.vim
source ~/.vim/startup/delimitMate.vim
source ~/.vim/startup/airline.vim

" Load custom settings
source ~/.vim/startup/settings.vim
source ~/.vim/startup/color.vim
source ~/.vim/startup/mappings.vim
