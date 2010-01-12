#!/bin/sh

if [[ $USER == 'root' ]] ; then
   umask 0022
else
   umask 0007
fi
