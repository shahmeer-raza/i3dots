#!/bin/bash
COLOR="#e49a6b"
COLOR2="#566178"
# Get mute status
mute_status=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

# Check if muted
if [[ "$mute_status" == "yes" ]]; then
    echo "%{F$COLOR2}%{F-}"
    exit 0
fi

# Get volume
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1)

# Check if Bluetooth (alternative methods)
if pactl list sinks | grep -i "bluetooth\|bluez\|a2dp" > /dev/null; then
    echo "%{F$COLOR}%{F-} ${volume}"
else
    echo "%{F$COLOR} %{F-}${volume}"
fi
