#!/bin/bash

SCRIPTSDIR=$HOME/.config/hypr/scripts

# Kill already running process
_ps=(waybar mako optimus-manager-qt)
for _prs in "${_ps[@]}"; do
	if [[ $(pidof ${_prs}) ]]; then
		killall -9 ${_prs}
	fi
done

# Lauch notification daemon (mako)
${SCRIPTSDIR}/Mako.sh &

# Lauch statusbar (waybar)
${SCRIPTSDIR}/Waybar.sh &