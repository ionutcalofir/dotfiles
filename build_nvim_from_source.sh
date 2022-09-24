sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen

cd ~
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
sudo rm -rf neovim

git clone https://github.com/neovim/neovim
cd neovim
git checkout nightly

make distclean
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ~
sudo rm -rf neovim
