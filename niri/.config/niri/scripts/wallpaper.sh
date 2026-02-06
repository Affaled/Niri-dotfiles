#!/bin/bash
DIR="/home/$USER/Wallpaper"
WALLPAPER=$(find "$DIR" -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1)

swaybg -m fill -i "$WALLPAPER" &

matugen image "$WALLPAPER" -t niri-colors.kdl -o "$HOME/.config/niri/colors.kdl"