#!/bin/sh

STATUS="$(playerctl status)"

if [ "$STATUS" = "Playing" ] || [ "$STATUS" = "Paused" ]; then
    if [ "$STATUS" = "Playing" ]; then
        SYMBOL="♫"
    else
        SYMBOL="⏸"
    fi
    printf "%s %s" "$SYMBOL" "$(playerctl metadata --format '{{ artist }} - {{ title }}' | tail -c 40)"
fi
