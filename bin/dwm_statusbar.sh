#!/bin/sh

while true; do
    TIME=`date '+%a %Y-%m-%d %H:%M'`
	xsetroot -name "| 📅︎ $TIME |"
	sleep 55s
done &
