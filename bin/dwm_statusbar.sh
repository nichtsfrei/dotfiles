#!/bin/sh


while true; do
    BAT0="0: `acpiconf -i 0 | grep "Remaining capacity" | sed 's/Remaining capacity:[[:space:]]*//'`"
    BAT1="1: `acpiconf -i 1 | grep "Remaining capacity" | sed 's/Remaining capacity:[[:space:]]*//'`"
    BATTERY="$BAT0 ♽ $BAT1" 
    BATTERY="| $BATTERY"
    TIME=`date '+%a %Y-%m-%d %H:%M'`
	xsetroot -name "$BATTERY | $TIME |"
	sleep 55
done &
