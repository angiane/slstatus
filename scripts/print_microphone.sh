#!/bin/sh

# Dependencies: alsa-utils 
# sudo pacman -S alsa-utils
print_microphone() {
	case $(amixer get Capture | tail -n1 | awk -F '[][]' '{print $6}') in
		off)
			echo " $(amixer get Capture | tail -n1 | awk -F '[][]' '{print $2}')"
			;;
		*)
			echo " $(amixer get Capture | tail -n1 | awk -F '[][]' '{print $2}')"
	esac
}

print_microphone
