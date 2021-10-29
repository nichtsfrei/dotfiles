#!/bin/sh
set -ex
#sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 90
#sudo update-alternatives --config editor
sudo apt install -y golang clang-tools gopls npm clangd

[ -z $1 ] && BASE_PATH=`pwd` || BASE_PATH=$1
rm -rf ~/.config/nvim
ln -s $BASE_PATH ~/.config/nvim
nvim +'PlugInstall --sync' +qa
