#!/bin/sh

# This script retrieves information about the current internet connection with connman

SERVICENAME=$(connmanctl services | grep -E "^\*AO|^\*O" | grep -Eo 'wifi_.*|ethernet_.*')

if [ ! "$SERVICENAME" ]; then
    printf "OFFLINE"
    return
else
    STRENGTH=$(connmanctl services "$SERVICENAME" | sed -n -e 's/Strength =//p' | tr -d ' ')
    CONNAME=$(connmanctl services "$SERVICENAME" | sed -n -e 's/Name =//p' | tr -d ' ')
    IP=$(connmanctl services "$SERVICENAME" | grep 'IPv4 =' | awk '{print $5}' | sed -n -e 's/Address=//p' | tr -d ',')
fi

# if STRENGTH is empty, we have a wired connection
if [ "$STRENGTH" ]; then
    printf "%s %s %s%%" "$IP" "$CONNAME" "$STRENGTH"
else
    printf "%s %s" "$IP" "$CONNAME"
fi
