#!/bin/zsh

export path_vol='/vol/usr/bin'
export path_ali01="$shell/0-path"
export path_java="$shell/1-paths/java"
export path_google_depot_tools="$code/research/starlight/google_src/depot_tools"

typeset -U path
path=($path_ali01 $path_vol $path_google_depot_tools $path)
path=('/usr/local/sbin' $path) # brew

typeset -U manpath
manpath=('/vol/usr/man' $manpath)

# typeset -U cdpath
# cdpath=(. $code "$code/academic")

typeset -U fpath
fpath=($zshfn/**/ $fpath)

