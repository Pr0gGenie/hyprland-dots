#!/bin/bash

# If there is a file off in ../hypr/scripts

if [ -f "$HOME/.config/hypr/scripts/off" ]; then
  mv "$HOME/.config/hypr/scripts/off" "$HOME/.config/hypr/scripts/on"
else
  mv "$HOME/.config/hypr/scripts/on" "$HOME/.config/hypr/scripts/off"
fi

sh "$HOME/.config/hypr/scripts/battery-mode.sh"
