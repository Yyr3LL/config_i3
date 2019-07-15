#!/bin/sh

choices="laptop\nlaptopHDMI"

chosen=$(echo -e "$choices" | dmenu -i -p "output")

case "$chosen" in 
	laptop) xrandr --auto & xrandr --output HDMI1 --off ;;
	laptopHDMI) xrandr --output HDMI1 --left-of LVDS1 --auto ;;
esac

