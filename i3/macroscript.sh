#!/bin/sh

if [ "$#" -eq 0 ]; then
	choices="|macro mode|\n|10cps|\n|100cps|\n|200cps|\n|stop|"
	choice=$(printf "$choices" | dmenu)

else
	choice=$1
fi

case $choice in
	"|macro mode|")
		i3 mode "macro";;

	"|10cps|")
		xdotool click --repeat 1000 1;;

	"|100cps|")
		xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1;;

	"|200cps|")
		xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1 & xdotool click --repeat 1000 1;;

	"|stop|")
		killall xdotool;;
	*)
		1
		;;
esac
