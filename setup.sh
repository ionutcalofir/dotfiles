sudo apt install git
git clone https://github.com/ICalofir/dotfiles.git

// Powerline fonts - https://github.com/powerline/fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
sudo apt install fonts-powerline

sudo apt install tmux
sudo apt install zsh

sudo apt install xclip
sudo apt install curl
sudo apt install build-essential cmake
sudo apt install clang

sudo add-apt-repository ppa:neovim-ppa/unstable # for latest updates
sudo apt update
sudo apt install neovim
sudo apt install python3-dev python3-pip
sudo pip3 install neovim
sudo pip3 install --upgrade pynvim

ln -sf "$HOME/Documents/Repositories/dotfiles/home/.tmux.conf" "$HOME/.tmux.conf"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh
ln -sf "$HOME/Documents/Repositories/dotfiles/home/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/Documents/Repositories/dotfiles/home/zshrc" "$HOME/zshrc"
sudo chsh -s $(which zsh)

ln -sf "$HOME/Documents/Repositories/dotfiles/home/.vim" "$HOME/.vim"
ln -sf "$HOME/Documents/Repositories/dotfiles/home/.vimrc" "$HOME/.vimrc"

mkdir ~/.config/nvim
ln -sf "$HOME/Documents/Repositories/dotfiles/home/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim"
nvim +PlugInstall! +qall

// Only if vim is installed
// vim +PlugInstall! +qall
// sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
// sudo update-alternatives --config vim

ln -sf "$HOME/Documents/Repositories/dotfiles/home/.ctags" "$HOME/.ctags"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/update_plugins all
Open tmux and run: tmux source ~/.tmux.conf

// LSP
pip install python-language-server
