#!/bin/zsh

export path_user='~/bin'
export path_ali01="$shell/0-path"
export path_brew='/usr/local/sbin'
export path_npm='/usr/local/share/npm/bin'

typeset -U path
path=($path_user $path_ali01 $path_brew $path_npm $path)

typeset -U manpath
manpath=('/usr/local/share/man' $manpath)

# typeset -U cdpath
# cdpath=(. $code "$code/academic")

typeset -U fpath
fpath=($zshfn/**/ $fpath)
