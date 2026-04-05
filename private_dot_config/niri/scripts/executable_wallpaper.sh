#!/bin/bash

WALLPAPER="$HOME/Pictures/wallpapers/alone-in-the-crowd-p5-1920x1080.jpg"

# Check if awww is installed
if ! command -v awww &>/dev/null; then
    notify-send -u critical "Error" "awww is not installed. Please install it first."
    exit 1
fi

# Start awww daemon if not running
if ! pgrep -x "awww-daemon" >/dev/null; then
    awww-daemon
    # Give it a short moment to start up
    sleep 0.5
fi

awww img "$WALLPAPER" \
    --transition-type grow \
    --transition-fps 60 \
    --transition-duration 3
