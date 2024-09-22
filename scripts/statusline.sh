#!/bin/bash
while true; do
    # Battery information
    battery=$(acpi -b | grep -m 1 "Battery 0:")
    battery_percentage=$(echo "$battery" | awk -F' ' '{print $4}' | sed 's/%,//g')
    battery_status=$(echo "$battery" | awk -F' ' '{print $3}')

    # Wi-Fi information
    wifi_ssid=$(iwgetid -r)
    wifi_signal=$(grep "wlan0" /proc/net/wireless | awk '{print int($3 * 100 / 70)}')

    # Volume information
    volume=$(amixer get Master | grep '%' | head -n 1 | awk '{print $5}' | tr -d '[]')

    # Combine the information into a single status line
    status_line="Battery: $battery_percentage ($battery_status) | Wi-Fi: $wifi_ssid ($wifi_signal%) | Volume: $volume | $(date +'%Y-%m-%d %X')"
    echo "$status_line"

    sleep 1
done
