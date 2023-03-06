#!/bin/bash
  
# check have a delta argument
if [ -z "$1" ]; then
    echo "Please provide a number of seconds to switch desktops as first argument"
    exit 128
fi
  
if [ "$1" -lt 0 ]; then
    echo "Please provide a number of seconds >= 3"
    exit 128
fi
  
# init
numDesktops=2
desktop=$(xdotool get_desktop);
  
echo "Press Crtl+C or kill this script to stop the switching"
echo "Fist switch will occur in $1 seconds..."
while true
do
    sleep $1
    # change desktop
    desktops=$((desktop - 1))
    xdotool set_desktop $desktops
    pkill switchd_prev.sh
done
