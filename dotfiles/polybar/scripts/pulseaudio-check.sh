#!/bin/bash

primary="%{F#e49a6b}"
reset="%{F-}"

# Get mute status
mute_status=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

# Check if muted
if [[ "$mute_status" == "yes" ]]; then
    echo "${primary}${reset}"
    exit 0
fi

# Get volume
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1)

# Check if Bluetooth
if pactl list sinks | grep -A 10 "Name: @DEFAULT_SINK@" | grep -q "bluez"; then
    echo "${primary}${reset} ${volume}"
else
    echo "${primary}${reset} ${volume}"
fi
