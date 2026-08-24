#!/bin/bash

current_ssid=$(nmcli -t -f ACTIVE,SSID dev wifi | grep '^yes' | cut -d: -f2)

if [[ "$1" == "--status" ]]; then
    if [[ -n "$current_ssid" ]]; then
        echo " "  # Wi-Fi icon + SSID
    else
        echo ""       # Wi-Fi with X icon (Font Awesome)
    fi
    exit 0
fi

networks=$(nmcli -t -f SSID dev wifi list | grep -v '^$' | sort -u)

if [[ -n "$current_ssid" ]]; then
    networks="-- Disconnect --\n$networks"
fi

chosen=$(echo -e "$networks" | rofi -dmenu -p "Select Wi-Fi:")

[[ -z "$chosen" ]] && exit 0

if [[ "$chosen" == "-- Disconnect --" ]]; then
    nmcli connection down "$current_ssid"
else
    password=$(rofi -dmenu -p "Password for $chosen:" -password)
    if [[ -n "$password" ]]; then
        nmcli device wifi connect "$chosen" password "$password"
    fi
fi
