#!/bin/sh

if [[ $OSTYPE != *darwin* ]] ; then
  exec ssh-agent "$SHELL"
fi
