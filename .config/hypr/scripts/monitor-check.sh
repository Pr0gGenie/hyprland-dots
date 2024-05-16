#!/usr/bin/env bash

# Checks if a external monitor is connected
if xrandr | grep -q "HDMI-A-1"; then
  gBar bar HDMI-A-1
else
  gBar bar eDP-1
fi
