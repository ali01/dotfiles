#!/bin/sh

# diurnal
# -------
# DIR_COLOR='hx'
# SYM_LINK_COLOR='gx'
# SOCKET_COLOR='Fx'
# PIPE_COLOR='dx'
# EXE_COLOR='Bx'
# BLOCK_SP_COLOR='Dx'
# CHAR_SP_COLOR='Dx'
# EXE_SUID_COLOR='hx'
# EXE_GUID_COLOR='ax'
# DIR_STICKY_COLOR='Ex'
# DIR_WO_STICKY_COLOR='Ex'
# 
# export LSCOLORS="$DIR_COLOR$SYM_LINK_COLOR$SOCKET_COLOR$PIPE_COLOR$EXE_COLOR\
# $BLOCK_SP_COLOR$CHAR_SP_COLOR$EXE_SUID_COLOR$EXE_GUID_COLOR$DIR_STICKY_COLOR\
# $DIR_WO_STICKY_COLOR"

if [[ $linux == true ]] ; then
   alias ls='ls -F --color'
   alias lr='ls -Flkhi --color'
elif [[ $mac_os == true ]] ; then
   alias ls='ls -GF'
   alias lr='ls -GFlkhi'
fi
alias ll='Flr'
alias la='Flr -A'
