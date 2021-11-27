#!/bin/sh

choice=$(printf "stop
Gorillaz - Désolé
Lofi Radio 1
Café Swing
Parla Più Piano" | dmenu -i -l 15 )

case $choice in
        "Gorillaz - Désolé") mpv --no-video https://www.youtube.com/watch\?v\=ZLKZKmdZEjM ;;

        "Lofi Radio 1") mpv --no-video https://www.youtube.com/watch?v=5qap5aO4i9A ;;

        "Cafe Swing") mpv --no-video https://www.youtube.com/watch?v=1hY8f20tqlI ;;

        "stop") killall mpv ;;

        *) : ;;
esac
