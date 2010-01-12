#!/bin/zsh

export path_vol='/vol/usr/bin'
export path_ali01="$shell/0-path"
export path_python="$shell/1-paths/python"
export path_java="$shell/1-paths/java"

typeset -U path
path=($path_ali01 $path_vol $path)
path=('/opt/local/bin' '/opt/local/sbin' $path) # macports
path=('/vol/arianne/home/code/academic/cs140/tantalum/src/path' $path) # CS 140

typeset -U cdpath
cdpath=(. $home $code $code/*projects* "$code/academic" $shell)

typeset -U fpath
fpath=($zshfn/**/ $fpath)

typeset -U manpath
manpath=('/opt/local/share/man' '/vol/usr/man' $manpath)
manpath=('/opt/local/share/man' $manpath) # macports