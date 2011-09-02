#!/bin/sh
setopt histverify append_history inc_append_history \
       share_history extended_history hist_ignore_dups hist_ignore_all_dups \
       hist_reduce_blanks hist_ignore_space

unsetopt hist_beep

export HISTFILE=~/.history
export HISTSIZE=5000
export SAVEHIST=5000
