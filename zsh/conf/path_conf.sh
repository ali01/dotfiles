#!/bin/zsh

typeset -U path
path=('/usr/local/sbin' $path)

typeset -U manpath
manpath=('/usr/local/share/man' $manpath)

# typeset -U cdpath
# cdpath=(. $code "$code/academic")

typeset -U fpath
fpath=($zshfn/**/ $fpath)
