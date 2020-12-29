#!/bin/sh
#xrandr --output DP-1 --mode 5120x1440
SCRIPT_PATH="$(dirname "$(realpath $0)")"
sh $SCRIPT_PATH/../bin/dwm_statusbar.sh
#setxkbmap -option grp:alt_shift_toggle us,de
xmodmap ~/.Xmodmap
feh --bg-scale ~/Pictures/wall.jpg
exec /usr/local/bin/dwm
