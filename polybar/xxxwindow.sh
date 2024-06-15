#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)
COLOR=c5c8c6
if [ $WM_DESKTOP == "2097252" ] || [ $WM_DESKTOP == "75497572" ] || [ $WM_DESKTOP == "6291556" ];  then

	echo "Desktop"

	#1883
elif [ $WM_DESKTOP != "1883" ]; then

	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
	WM_NAME=$(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')

	if [ $WM_CLASS == 'firefox' ]; then

		#echo "%{F#$COLOR}Firefox%{u-}"
		echo "Firefox"
	
	elif [ $WM_CLASS == 'Alacritty' ]; then

		echo "Alacritty"
	
	elif [[ $WM_NAME == ' ' ]]; then

		echo "Everlasting Summer"

	#elif [ $WM_NAME == 'Enter WM_NAME value here' ]; then

	#	echo "%{F#ffffff}Custom name%{u-}"

	else

		#echo "%{F#c5c8c6}$WM_NAME%{u-}"
		echo "$WM_NAME"

	fi

fi
