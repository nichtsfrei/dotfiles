#!/bin/bash


while true; do
    BATTERY=""
    for bat in /sys/class/power_supply/BAT* ; do
        name=`basename $bat | sed 's/BAT//g'`
        #status=`cat $bat/status`
        now=`cat $bat/energy_now`
        full=`cat $bat/energy_full`
        cycle_count=`cat $bat/cycle_count`
        BATTERY="$BATTERY ($name: ♽ $cycle_count $now/$full)" 
    done
    BATTERY="| 🔋 $BATTERY"
    TIME=`date '+%a %Y-%m-%d %H:%M'`
	xsetroot -name "$BATTERY | 📅︎ $TIME |"
	sleep 55s
done &
