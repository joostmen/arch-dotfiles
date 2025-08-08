#!/bin/bash

# Installeer standaardpakketten
sudo pacman -S --needed hyprland kitty waybar wofi discord dolphin blueberry 

# Configs terugzetten
mkdir -p ~/.config/hypr ~/.config/kitty ~/.config/waybar ~/.config/wofi

cp -r  ~/arch-dotfiles/hypr/* ~/.config/hypr/
cp -r  ~/arch-dotfiles/kitty/* ~/.config/kitty/
cp -r  ~/arch-dotfiles/waybar/* ~/.config/waybar/
cp -r  ~/arch-dotfiles/wofi/* ~/.config/wofi/
cp ~/arch-dotfiles/bashrc ~/.bashrc

echo "Installatie voltooid!"

