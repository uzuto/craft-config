#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3

## launch alacritty with berry config

CONFIG="$HOME/.config/berry/alacritty/alacritty.yml"

if [ "$1" == "--float" ]; then
	alacritty --class 'alacritty-float,alacritty-float' --config-file "$CONFIG"
elif [ "$1" == "--full" ]; then
	alacritty --class 'Fullscreen,Fullscreen' --config-file "$CONFIG" -o window.startup_mode=fullscreen window.padding.x=20 window.padding.y=20 window.opacity=1.0 font.size=14
else
	alacritty --config-file "$CONFIG"
fi
