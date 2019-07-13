#!/bin/sh

choices="email\ngithub\nnum"

chosen=$(echo -e "$choices" | dmenu -i -p "signature")

case "$chosen" in 
	email) echo "tarasenko.yura.dr@gmail.com" | xclip -selection c ;;
	github) echo "https://github.com/Yyr3LL/" | xclip -selection c ;;
	num) echo "+380986069393" | xclip -selection c ;;
esac

