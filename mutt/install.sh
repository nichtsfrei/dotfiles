#!/bin/sh

[ -z $1 ] && BASE_PATH=`pwd` || BASE_PATH=$1

mkdir -p $HOME/.mutt
ln -s $BASE_PATH/muttrc $HOME/.mutt/muttrc
ln -s $BASE_PATH/gpg.rc $HOME/.mutt/gpg.rc
