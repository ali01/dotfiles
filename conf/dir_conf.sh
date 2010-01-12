#!/bin/zsh

setopt auto_pushd pushd_ignore_dups pushd_minus cdable_vars
export DIRSTACKSIZE=16

alias '~'='cd $home'
alias 'dirs'='dirs -v'