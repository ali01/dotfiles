#!/bin/zsh

export GOPATH="/home/alive/home/code/go"
export go_base='/usr/local/go'

typeset -U path
path=('/usr/local/sbin' $go_base/bin $GOPATH/bin $path)

typeset -U manpath
manpath=('/usr/local/share/man' $manpath)

# typeset -U cdpath
# cdpath=(. $code "$code/academic")

typeset -U fpath
fpath=($zshfn/**/ $fpath)
