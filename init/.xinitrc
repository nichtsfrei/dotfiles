#!/bin/sh

xrandr --output DP-1 --mode 5120x1440
sh $HOME/src/nichtsfrei/dotfiles/bin/dwm_statusbar.sh
xmodmap ~/.Xmodmap
feh --bg-scale ~/Pictures/wall.jpg
pulseaudio -D
exec /usr/local/bin/dwm
