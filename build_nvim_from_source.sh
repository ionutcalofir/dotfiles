cd ~
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
sudo rm -rf neovim

git clone https://github.com/neovim/neovim
cd neovim

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ~
sudo rm -rf neovim

# vim -c 'PlugUpdate | q | q'
