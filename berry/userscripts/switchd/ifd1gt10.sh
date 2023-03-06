#!/bin/bash

desk=$(xdotool get_desktop)
if [ $desk=0 ]; then
exec xdotool set_desktop 9
fi
