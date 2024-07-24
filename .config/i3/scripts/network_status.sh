#!/bin/bash


# Check for wireless connection
wireless=$(ip -o -4 addr show dev wlan0 | awk '{print $4}' | cut -d/ -f1)

if [ -n "$wired" ]; then
    echo "Wired: $wired"
elif [ -n "$wireless" ]; then
    echo "Wireless: $wireless"
else
    echo "No connection"
fi
