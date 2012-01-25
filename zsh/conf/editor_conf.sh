#!/bin/sh

alias emacs='emacs -nw'

if [[ $linux == true ]] ; then
   export GIT_EDITOR='emacs'
   export VISUAL='emacs'
   export EDITOR='emacs'
elif [[ $mac_os == true ]] ; then
   export GIT_EDITOR='mate -w'
   export VISUAL='mate -w'
   export EDITOR='mate -w'
fi
