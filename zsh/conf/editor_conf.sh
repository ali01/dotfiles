#!/bin/sh

alias emacs='emacsclient -nw --alternate-editor="" -c "$@"'

export EDITOR='emacs'
export GIT_EDITOR='$EDITOR'
export VISUAL='$EDITOR'
