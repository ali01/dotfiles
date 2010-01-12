#!/bin/zsh

if [[ $OSTYPE(:l) == *linux* ]] ; then
   export linux=true
   if [[ $HOSTNAME(:l) == *stanford* ]] ; then
      export user_dir=~
   else
      export user_dir=/vol/simone
   fi
elif [[ $OSTYPE(:l) == *darwin* ]] ; then
   export mac_os=true
   export user_dir=/vol/arianne
fi

export home="$user_dir/home"
export code="$home/code"
export shell="$code/shell"
export zsh="$shell/zsh"
export zshfn="$zsh/functions"
export zconf="$zsh/conf"

autoload -U ${zshfn}/**/*(:t)
for script in ${zconf}/**/*.sh ; do
   . $script
done

cd $home
