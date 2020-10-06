#!/bin/sh

xrandr --output DP-2 --mode 5120x1440
sh $HOME/src/nichtsfrei/dotfiles/bin/dwm_statusbar.sh
setxkbmap -option grp:alt_shift_toggle us,de
xmodmap ~/.Xmodmap
feh --bg-scale ~/Pictures/wall.jpg
pulseaudio -D
exec /usr/local/bin/dwm
