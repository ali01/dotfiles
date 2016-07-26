#!/bin/zsh

if [[ $OSTYPE == *linux* ]] ; then
  export GOPATH="/code/go"
elif [[ $OSTYPE == *darwin* ]] ; then
  export GOPATH="/code/go"
fi

export go_base='/usr/local/go'

typeset -U path
path=('/usr/local/sbin' $go_base/bin $GOPATH/bin $path)

typeset -U manpath
manpath=('/usr/local/share/man' $manpath)

export PYTHONPATH="$PYTHONPATH:/Library/Python/2.7/site-packages"

# typeset -U cdpath
# cdpath=(. $code "$code/academic")

typeset -U fpath
fpath=($zshfn/**/ $fpath)
