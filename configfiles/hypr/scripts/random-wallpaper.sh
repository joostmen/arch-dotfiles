#!/bin/bash

WALLPAPER_DIR="/home/joost/Images/wallpapers"
CONFIG_FILE="/home/joost/.config/hypr/hyprpaper.conf"

monitors=$(hyprctl monitors | grep "^Monitor" | sed -r 's/^Monitor ([^(]+) \(ID [0-9]+\):$/\1/')

>"$CONFIG_FILE"

for wp in "$WALLPAPER_DIR"/*.{jpg,png,jpeg}; do
  [ -f "$wp" ] && echo "preload = $wp" >>"$CONFIG_FILE"
done

for mon in $monitors; do
  selected_wp=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)
  echo "wallpaper = $mon,$selected_wp" >>"$CONFIG_FILE"
done

# Stop hyprpaper
pkill -x hyprpaper

sleep 0.2

# Start hyprpaper opnieuw
hyprpaper &
