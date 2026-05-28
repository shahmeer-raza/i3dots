#!/bin/bash

# Get currently connected SSID
current_ssid=$(nmcli -t -f ACTIVE,SSID dev wifi | grep '^yes' | cut -d: -f2)

if [[ "$1" == "--status" ]]; then
    if [[ -n "$current_ssid" ]]; then
        echo " "  # Wi-Fi icon + SSID
    else
        echo ""       # Wi-Fi with X icon (Font Awesome)
    fi
    exit 0
fi

# List available Wi-Fi networks
networks=$(nmcli -t -f SSID dev wifi list | grep -v '^$' | sort -u)

# Add disconnect option if connected
if [[ -n "$current_ssid" ]]; then
    networks="-- Disconnect --\n$networks"
fi

# Show selection menu
chosen=$(echo -e "$networks" | rofi -dmenu -p "Select Wi-Fi:")

if [[ -z "$chosen" ]]; then
    exit 0
fi

if [[ "$chosen" == "-- Disconnect --" ]]; then
    nmcli connection down "$current_ssid"
else
    nmcli device wifi connect "$chosen"
fi

