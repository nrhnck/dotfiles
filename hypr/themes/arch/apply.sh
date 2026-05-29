#!/bin/bash

# set wallpaper
hyprctl hyprpaper preload "$HOME/.config/hypr/themes/arch/wallpaper.jpg"
hyprctl hyprpaper wallpaper ",$HOME/.config/hypr/themes/arch/wallpaper.jpg"

# apply hypr theme
cp ~/.config/hypr/themes/arch/hypr.conf ~/.cache/hypr-theme/current/

# apply waybar theme
cp ~/.config/hypr/themes/arch/colors.css ~/.cache/waybar-theme/colors.css

# reload
hyprctl reload
pkill -SIGUSR2 waybar
