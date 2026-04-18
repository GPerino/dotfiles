#!/bin/bash

notify_sent_low=0
notify_sent_critical=0

while true; do
    battery=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)
    status=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)

    if [ "$status" = "Discharging" ]; then

        if [ "$battery" -le 5 ]; then
            if [ $notify_sent_critical -eq 0 ]; then
                notify-send -u critical "🪫 Niveau de batterie critique ! $battery%"
                notify_sent_critical=1
            fi
        elif [ "$battery" -le 25 ]; then
            if [ $notify_sent_low -eq 0 ]; then
                notify-send "⚠️ Batterie faible" "Il reste $battery%"
                notify_sent_low=1
            fi
        else
            notify_sent_low=0
            notify_sent_critical=0
        fi

    else
        notify_sent_low=0
        notify_sent_critical=0
    fi

    sleep 30
done
