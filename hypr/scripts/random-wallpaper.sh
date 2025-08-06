#!/bin/bash

WALLPAPER_DIR="/home/joost/Images/wallpapers"
CONFIG_FILE="/home/joost/.config/hypr/hyprpaper.conf"

# Kies een willekeurige wallpaper
SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

# Start nieuwe config met preload regels
> "$CONFIG_FILE"  # Leeg het bestand eerst

for wp in "$WALLPAPER_DIR"/*.{jpg,png,jpeg}; do
    [ -f "$wp" ] && echo "preload = $wp" >> "$CONFIG_FILE"
done

# Voeg de regel toe die daadwerkelijk een wallpaper zet
echo "wallpaper = eDP-1,$SELECTED_WALLPAPER" >> "$CONFIG_FILE"
# Pas eDP-1 aan naar jouw monitornaam! (zie tip hieronder)

# Stop eventueel draaiende hyprpaper
pkill -x hyprpaper

# Wacht even (heel kort) om zeker te zijn dat proces is gestopt
sleep 0.2

# Start hyprpaper opnieuw
hyprpaper &

