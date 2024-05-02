#!/bin/bash

# Note: 
# Remove anything related to asusctl if you don't have an asus laptop
# Change the refresh rate to your liking

# If touch off exists
if [ -f "$HOME/.config/hypr/scripts/off" ]; then
  # Replace the 1920x1080@60 with 1920x1080@300 in the file ../hyprland.conf
  # sed -i 's/eDP-1,1920x1080@60/eDP-1,highres/g' "$HOME/.config/hypr/hyprland.conf"

  # Changes asusctl settings
  asusctl profile -P Performance
  asusctl -k high

  # Changes hyprland settings back
  hyprctl reload
  
  # Restores brightness
  brightnessctl set 50%+ 

  # Sends a notification saying battery mode is off
  notify-send "󱟤 Battery Mode: Off"
else

  # Replace the 1920x1080@300 with 1920x1080@60 in the file ../hyprland.conf
  # sed -i 's/eDP-1,highres/eDP-1,1920x1080@60/g' "$HOME/.config/hypr/hyprland.conf"

  # Changes asusctl settings
  asusctl profile -P Quiet
  asusctl -k off

  # Lowers the brightness
  brightnessctl set 50%- 
  
  # Sends a notification saying battery mode is on
  notify-send "󱟦 Battery Mode: On"
fi

