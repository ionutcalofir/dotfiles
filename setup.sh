#!/usr/bin/env bash

# install packages
function install_packages() {
    echo "Installing packages..." | tee -a logger.log

    sudo apt -y update | tee -a logger.log

    sudo apt-get -y install \
        vim \
        git \
        tmux \
        zsh \
        curl \
        | tee -a logger.log

    sudo apt-get install software-properties-common | tee -a logger.log # be able to use add-apt-repository

    sudo add-apt-repository ppa:neovim-ppa/stable | tee -a logger.log # add neovim package
    sudo apt-get update | tee -a logger.log

    sudo apt-get install neovim | tee -a logger.log # install neovim
    sudo apt-get install python-dev python-pip python3-dev python3-pip | tee -a logger.log # prerequisites for the python modules
    sudo pip3 install neovim | tee -a logger.log # vim python plugins with neovim

    # use neovim instead of vim
    sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60 | tee -a logger.log
    sudo update-alternatives --config vim | tee -a logger.log

    echo "Done installing packages!" | tee -a logger.log
}

function make_symlinks() {
    echo "Making symlinks..." | tee -a logger.log
    ln -sf "$HOME/Repositories/dotfiles/home/.vimrc" "$HOME/.vimrc" | tee -a logger.log
    ln -sf "$HOME/Repositories/dotfiles/home/.zshrc" "$HOME/.zshrc" | tee -a logger.log
    ln -sf "$HOME/Repositories/dotfiles/home/.tmux.conf" "$HOME/.tmux.conf" | tee -a logger.log
    ln -sf "$HOME/Repositories/dotfiles/home/.ctags" "$HOME/.ctags" | tee -a logger.log
    ln -sf "$HOME/Repositories/dotfiles/home/.vim" "$HOME/.vim" | tee -a logger.log
    ln -sf "$HOME/Repositories/dotfiles/home/zshrc" "$HOME/zshrc" | tee -a logger.log
    ln -sf "$HOME/Repositories/dotfiles/home/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim" | tee -a logger.log
    echo "Done making symlinks!" | tee -a logger.log
}

# install plugins
function install_plugins() {
    echo "Installing plugins..." | tee -a logger.log

    # install oh-my-zsh
    if [ -e ~/.oh-my-zsh ]; then
        rm -rf ~/.oh-my-zsh
    fi
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    rm -rf ~/.zshrc
    mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

    # install tmux plugin manager
    if [ -e ~/.tmux/plugins/tpm ]; then
        rm -rf ~/.tmux/plugins/tpm
    fi
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm | tee -a logger.log
    ~/.tmux/plugins/tpm/bin/update_plugins all

    # Plug allows post-update hooks
    vim +PlugClean! +qall
    vim +PlugInstall! +qall

    # change shell to zsh
    chsh -s $(which zsh)
    sudo chsh -s $(which zsh)

    echo "Done installing plugins!" | tee -a logger.log
}

echo "Installing packages..." | tee -a logger.log
rm -rf logger.log
git pull
install_packages
make_symlinks
install_plugins
echo "Done!" | tee -a logger.log
