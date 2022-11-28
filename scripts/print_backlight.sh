#!/bin/sh

# Dependencies: xorg-xbacklight
# sudo pacman -S xorg-xbacklight
print_backlight() {
	echo " $(xbacklight | awk -F '.' '{print $1}')%"
}

print_backlight
