sudo apt install git
git clone https://github.com/ICalofir/dotfiles.git


sudo apt install vim
sudo apt install tmux
sudo apt install zsh

sudo apt install curl
sudo apt install build-essential cmake
sudo apt install clang
sudo apt install fonts-powerline

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
sudo apt install python3-dev python3-pip
sudo pip3 install neovim

ln -sf "$HOME/Documents/Repositories/dotfiles/home/.tmux.conf" "$HOME/.tmux.conf"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh 
ln -sf "$HOME/Documents/Repositories/dotfiles/home/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/Documents/Repositories/dotfiles/home/zshrc" "$HOME/zshrc"
sudo chsh -s $(which zsh)

ln -sf "$HOME/Documents/Repositories/dotfiles/home/.vim" "$HOME/.vim"
ln -sf "$HOME/Documents/Repositories/dotfiles/home/.vimrc" "$HOME/.vimrc"
# YCM trebuie comentat!

mkdir ~/.config/nvim
ln -sf "$HOME/Documents/Repositories/dotfiles/home/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim"
vim +PlugClean! +qall
vim +PlugInstall! +qall
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo pip3 install --upgrade pynvim

ln -sf "$HOME/Documents/Repositories/dotfiles/home/.ctags" "$HOME/.ctags"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/update_plugins all
tmux source ~/.tmux.conf

# Decomenteaza YCM si instaleaza-l
# Dupa ce il instalezi o sa primesti o eroare cu YcmServer
# ruleaza python3 install.py --clang-completer sa il instalezi cu python3
