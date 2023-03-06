#!/bin/bash

desk=$(xdotool get_desktop)
if [ $desk=9 ]; then
exec xdotool set_desktop 0
fi
