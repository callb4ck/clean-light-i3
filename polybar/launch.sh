#!/bin/sh

killall -q polybar

killall -q picom

#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar barra1 -r &

picom -C
