#!/bin/zsh

export path_vol='/vol/usr/bin'
export path_ali01="$shell/0-path"
export path_java="$shell/1-paths/java"
export path_google_depot_tools="$code/research/starlight/google_src/depot_tools"

typeset -U path
path=($path_ali01 $path_vol $path_google_depot_tools $path)
path=('/opt/local/bin' '/opt/local/sbin' $path) # macports

# typeset -U cdpath
# cdpath=(. $code "$code/academic")

typeset -U fpath
fpath=($zshfn/**/ $fpath)

typeset -U manpath
manpath=('/opt/local/share/man' '/vol/usr/man' $manpath)
manpath=('/opt/local/share/man' $manpath) # macports
