#!/bin/sh

# Dependencies: acpi
# sudo pacman -S acpi
get_battery_status() {
	if $(acpi -b | grep --quiet Discharging)
	then
		case $(acpi -b | awk -F ', ' '{print $2}' | awk -F '%' '{print $1}') in
			100)
				echo ''
				;;
			9[0-9])
				echo ''
				;;
			8[0-9])
				echo ''
				;;
			7[0-9])
				echo ''
				;;
			6[0-9])
				echo ''
				;;
			5[0-9])
				echo ''
				;;
			4[0-9])
				echo ''
				;;
			3[0-9])
				echo ''
				;;
			2[0-9])
				echo ''
				;;
			1[0-9])
				echo ''
				;;
			*)
				echo ''
		esac
	else
	        case $(acpi -b | awk -F ', ' '{print $2}' | awk -F '%' '{print $1}') in
			100)
				echo ''
				;;
			9[0-9])
				echo ''
				;;
			8[0-9])
				echo ''
				;;
			6[0-9])
				echo ''
				;;
			4[0-9])
				echo ''
				;;
			3[0-9])
				echo ''
				;;
			*)
				echo ''
		esac

	fi
}

print_battery() {
	echo "$(get_battery_status) $(acpi -b | awk -F ', ' '{print $2}')"
}

print_battery
