#!/bin/sh
set -ex

[ -z $1 ] && BASE_PATH=`pwd` || BASE_PATH=$1
rm -rf ~/.config/sway
ln -s $BASE_PATH ~/.config/sway
