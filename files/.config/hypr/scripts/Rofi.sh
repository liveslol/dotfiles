#!/bin/bash

CONFIG="$HOME/.config/hypr/rofi/config.rasi"

#if [[ ! $(pidof wofi) ]]; then
#	wofi --show drun --prompt 'Search...' --conf ${CONFIG} --style ${STYLE} --color ${COLORS}
#else
#	pkill wofi
#fi

if [[ ! $(pidof rofi) ]]; then
	rofi -show drun -config ${CONFIG}
else
	pkill rofi
fi