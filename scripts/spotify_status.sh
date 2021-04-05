#!/bin/sh

if [ "$(playerctl status)" = "Playing" ]; then
    printf "♫ %s" "$(playerctl metadata --format '{{ artist }} - {{ title }}')"
elif [ "$(playerctl status)" = "Paused" ]; then
    printf "⏸ %s" "$(playerctl metadata --format '{{ artist }} - {{ title }}')"
fi
