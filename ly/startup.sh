#!/bin/sh
# This file is executed when starting Ly (before the TTY is taken control of)
# Custom startup code can be placed in this file or the start_cmd var can be pointed to a different file


# Uncomment the example below for an example of changing the default TTY colors to an alternitive palette on linux
# Colors are in red/green/blue hex (the current colors are a brighter palette than default)
#
if [ "$TERM" = "linux" ]; then
 	BLACK="1e1e2e"
 	DARK_RED="e64553"
 	DARK_GREEN="40a02b"
 	DARK_YELLOW="df8e1d"
 	DARK_BLUE="1e66f5"
 	DARK_MAGENTA="ea76cb"
 	DARK_CYAN="7287fd"
 	LIGHT_GRAY="dce0e8"
 	DARK_GRAY="5c5f77"
 	RED="f38ba8"
 	GREEN="a6e3a1"
 	YELLOW="f9e2af"
 	BLUE="89b4fa"
 	MAGENTA="f5c2e7"
 	CYAN="b4befe"
 	WHITE="cdd6f4"

 	COLORS="${BLACK} ${DARK_RED} ${DARK_GREEN} ${DARK_YELLOW} ${DARK_BLUE} ${DARK_MAGENTA} ${DARK_CYAN} ${LIGHT_GRAY} ${DARK_GRAY} ${RED} ${GREEN} ${YELLOW} ${BLUE} ${MAGENTA} ${CYAN} ${WHITE}"

 	i=0
 	while [ $i -lt 16 ]; do
 		printf "\033]P%x%s" ${i} "$(echo "$COLORS" | cut -d ' ' -f$(( i + 1)))"

 		i=$(( i + 1 ))
 	done

 	clear # for fixing background artifacting after changing color
fi
