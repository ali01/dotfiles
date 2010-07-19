#!/bin/zsh

if [[ $OSTYPE == *linux* ]] ; then
   export linux=true
elif [[ $OSTYPE == *darwin* ]] ; then
   export mac_os=true
fi

export user_dir=~
export home="$user_dir/home"
export zsh="$user_dir/.zsh"
export code="$home/code"
export shell="$code/shell"
export zshfn="$zsh/functions"
export zconf="$zsh/conf"
# export zexec=~'/.zexec'

autoload -U ${zshfn}/**/*(:t)

for script in ${zconf}/**/*.sh ; do
   . $script
done

# for script in ${zexec}/**/* ; do
#    . $script
# done

cd $home
