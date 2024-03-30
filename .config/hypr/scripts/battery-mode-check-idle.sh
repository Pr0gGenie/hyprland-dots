#!/bin/bash

if [ -f "$HOME/.config/hypr/scripts/off" ]; then
  asusctl -k high  
else
  asusctl -k off 
fi
