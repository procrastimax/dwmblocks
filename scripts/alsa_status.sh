#!/bin/sh

# This script reads the current alsa sound value
# If it is muted, it is printed out as 'MUTED'

STATUS=$(amixer get Master | tail -1 | sed -r 's/\[|\]//g')

if [ $(echo $STATUS | awk '{ print $6 }') = 'on' ]; then
    echo $(echo $STATUS | awk '{ print $4 }')
else
    echo "MUTED"
fi
