#!/bin/zsh

export path_user='~/bin'
export path_vol='/vol/usr/bin'
export path_ali01="$shell/0-path"
export path_brew='/usr/local/sbin'

typeset -U path
path=($path_user $path_ali01 $path_brew $path_vol $path)

typeset -U manpath
manpath=('/vol/usr/man' $manpath)

# typeset -U cdpath
# cdpath=(. $code "$code/academic")

typeset -U fpath
fpath=($zshfn/**/ $fpath)
