#!/bin/bash
# Script pour switcher automatiquement audio: Headphones > Speakers
# ignore HDMI

while true; do
    # Vérifie si les headphones sont branchés
    HP_CONNECTED=$(wpctl status | grep -A1 "Headphones" | grep "Ports:" | grep "active" | wc -l)

    # Headphones
    HP_ID=$(wpctl status | awk '/Headphones/ {print $1}' | tr -d ':')
    # Speakers internes
    SP_ID=$(wpctl status | awk '/analog-stereo/ {print $1}' | tr -d ':')


    if [ "$HP_CONNECTED" -gt 0 ] && [ -n "$HP_ID" ]; then
        wpctl set-default "$HP_ID"
    elif [ -n "$SP_ID" ]; then
        wpctl set-default "$SP_ID"
    fi
        sleep 2
done
