#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
## Autostart Programs

# Kill already running process
_ps=(sxhkd polybar picom dunst ksuperkey mpd xfce-polkit xfce4-power-manager)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Fix cursor
xsetroot -cursor_name left_ptr

# Polkit agent
/usr/lib/xfce-polkit/xfce-polkit &
mpd &
# Enable power management
xfce4-power-manager &

## Enable Super Keys For Menu
sxhkd -c ~/.config/berry/sxhkdrc &

# Enable Super Keys For Menu
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# Set/Restore wallpaper
hsetroot -cover ~/Downloads/wallpapers/dwm_4.png

# Lauch polybar
~/.config/berry/bin/berrybar.sh

# Lauch notification daemon
~/.config/berry/bin/berrydunst.sh

# Lauch compositor
~/.config/berry/bin/berrycomp.sh

# (Uzuto) Launch xsettingsd daemon with config
xsettingsd -c ~/.config/berry/xsettingsd &
plank

# Start mpd
