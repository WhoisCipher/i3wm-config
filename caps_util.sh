#!/bin/bash

while true; do
    CAPS_STATE=$(xset q | grep "Caps Lock" | awk '{print $4}')

    if [ "$CAPS_STATE" == "on" ]; then
        echo "Caps: ON" | dzen2 -p -fn 'inter-10' -bg '#111111' -fg '#ffff00' -h 30 -x 633 -y 5 -w 100 &
    else
        pkill dzen2
    fi
    sleep 1
done

