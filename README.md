# craft-config
Before using these configs \
1. Install [chaotic-aur](https://aur.chaotic.cx/) and [yay](https://aur.archlinux.org/yay-git.git)

2. Then run
```
yay -Syu --noconfirm && yay -S bspwm sxhkd alacritty thunar geany rofi polybar \
dunst mpd mpc maim xclip viewnior feh ksuperkey \
betterlockscreen xfce4-power-manager \
xsettingsd xorg-xsetroot wmname zsh light xorg-xbacklight\
sddm qt5-declarative qt5-graphicaleffects qt5-quickcontrols2 qt5-svg \
polkit-gnome bc feh i3lock-color imagemagick xorg-xdpyinfo xorg-xrandr \
ksuperkey mkinitcpio-firmware networkmanager-dmenu-git --needed
```
3. Also Install your favourite picom fork. (reccomended ibhagwan)

4. Then get all the Resources from [here](https://www.opencode.net/uzuto/archcraft-res)
and Extract and place in respective places

5. Then clone this repo and copy dotfiles to desired location.

6. Run ```chmod +x``` for all executables inculding bspwmrc
7. Install extra packages
``` 
yay -S alsa-tools alsa-utils blueman bluez bluez-utils gpick gvfs gvfs-afc gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-smb jq jump lxappearance xfce4-settings man-db python-pywal thunar-archive-plugin thunar-media-tags-plugin thunar-volman xdg-user-dirs 
```
8. Reboot System

## NOTE
If you use another DE like cinnamon make sure to disable it's lockscreen or it would conflict with betterlockscreen
```
gsettings set org.cinnamon.desktop.screensaver lock-enabled false
```
