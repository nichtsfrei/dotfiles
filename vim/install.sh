#!/bin/sh
set -ex

[ -z $1 ] && BASE_PATH=`pwd` || BASE_PATH=$1

ln -s $BASE_PATH ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
echo '{"dependencies":{}}'> package.json
# Change extension names to the extensions you need
npm install coc-go coc-pyright coc-tsserver coc-json coc-html --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

vim +'PlugInstall --sync' +qa
