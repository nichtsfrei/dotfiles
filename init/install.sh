#!/bin/sh
set -ex

[ -z $1 ] && BASE_PATH=`pwd` || BASE_PATH=$1

ln -s $BASE_PATH/.xinitrc $HOME/.xinitrc
ln -s $BASE_PATH/.xinitrc $HOME/.xsession