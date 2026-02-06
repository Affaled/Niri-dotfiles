#!/bin/bash
DIR="/home/$USER/Wallpaper"
WALLPAPER=$(find "$DIR" -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1)

pkill swaybg
swaybg -m fill -i "$WALLPAPER" &

matugen image "$WALLPAPER"