#!/bin/bash
hyprpicker -z &
sleep 0.1
grim -g "$(slurp)" - | wl-copy
killall hyprpicker
notify-send "Screenshot" "Copied to clipboard"
