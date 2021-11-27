#!/bin/sh

case $# in
        0)
                gapval1=$(printf "10\n0" | dmenu)
                gapval2=$gapval1
                ;;

        1)
                gapval1=$1
                gapval2=$1
                ;;

        2)
                gapval1=$1
                gapval2=$2
                ;;
        *)
                gapval1=$(cat $HOME/.config/i3/ingaps)
                gapval2=$(cat $HOME/.config/i3/outgaps)
                ;;
esac

if [ "$gapval1" != "" ]; then

        i3 gaps inner all set $gapval1
        printf "$gapval1\n" > $HOME/.config/i3/ingaps

        i3 gaps outer all set $gapval2
        printf "$gapval2\n" > $HOME/.config/i3/outgaps 
fi
