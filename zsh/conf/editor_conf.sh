#!/bin/sh

alias emacs='emacs -nw'

export EDITOR='emacsclient -t --alternate-editor="" -c "$@"'
export GIT_EDITOR='$EDITOR'
export VISUAL='$EDITOR'
