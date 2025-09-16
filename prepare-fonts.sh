#!/bin/sh
VERSION="v3.4.0"
FONT_DIR="fonts"
FONT="Monaspace"
[ -d "$FONT_DIR" ] && echo "fonts exists" && exit 0
mkdir $FONT_DIR
[ ! -f "$FONT.zip" ] && curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/$VERSION/$FONT.zip
unzip -d $FONT_DIR/$FONT $FONT.zip
rm $FONT.zip
