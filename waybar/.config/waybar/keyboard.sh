#!/bin/sh
swaymsg -pt get_inputs | awk -f ~/.config/waybar/keyboard.awk