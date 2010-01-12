#!/bin/sh

if [[ $linux == true ]] ; then
   export GIT_EDITOR='nano'
   export VISUAL='nano'
   export EDITOR='nano'
elif [[ $mac_os == true ]] ; then
   export GIT_EDITOR='mate -w'
   export VISUAL='mate -w'
   export EDITOR='mate'
fi
