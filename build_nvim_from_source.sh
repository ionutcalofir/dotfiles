cd ~
sudo rm -r neovim

git clone https://github.com/neovim/neovim
cd neovim

sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ~
sudo rm -r neovim
