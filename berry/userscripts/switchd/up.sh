#!/bin/bash

desk=$(xdotool get_desktop)
if [ $desk=9 ];
then
xdotool set_desktop 0;
else 
exec ~/.config/berry/userscrips/switchd/switchd_next.sh
fi
