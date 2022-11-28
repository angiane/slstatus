#!/bin/sh

# Dependencies: alsa-utils 
# sudo pacman -S alsa-utils
print_volume() {
	if $(amixer get Master | awk -F '[][]' ' /Mono:/ {print $6}' | grep --quiet off)
	then
		echo '婢'
	else
		case $(amixer get Master | awk -F '[][]' ' /Mono:/ {print $2}') in
			0%)
				echo 'ﱝ'
				;;
			*)
				echo "墳 $(amixer get Master | awk -F '[][]' ' /Mono:/ {print $1}' | awk -F ' ' '{print $3}')%"
		esac
	fi
}

print_volume
