#!/bin/zsh


alias ..="cd .."
alias cl="clear"
alias date="date \"+%Y-%m-%d %H:%M:%S\""

# generic shell options

setopt no_bgnice
setopt nobeep
setopt correct
setopt extended_glob
setopt multios
setopt nomatch          # no error if glob fails to expand (scp fix)

unsetopt list_beep
unsetopt chase_dots   # don't resolve .. in cd
unsetopt chase_links  # don't resolve symbolic links in cd
unsetopt flow_control # turn off output flow control (so ^S/^Q work)
stty -ixon -ixoff 2>/dev/null # really, no flow control.

autoload -U age
autoload -U zmv

# environment variables

if [[ $OSTYPE == *linux* ]] ; then
   export linux=true
elif [[ $OSTYPE == *darwin* ]] ; then
   export mac_os=true
fi

if [[ $mac_os == true ]] ; then
    alias hk="open ~/home/walros.sparseimage"
    alias lk="diskutil eject /Volumes/Code"
fi

alias hk="open ~/home/walros.sparseimage"
alias lk="diskutil eject /Volumes/Code"

export user_dir=~
export dotfiles="$user_dir/.dotfiles"
export home="$user_dir/home"
export zsh="$dotfiles/zsh"
export code="$home/code"
export shell="$code/shell"
export zshfn="$zsh/functions"
export zconf="$zsh/conf"

# configuration files

autoload -U ${zshfn}/**/*(:t)

if [[ -d "${zconf}" ]] ; then
   for script in ${zconf}/**/*.sh ; do
      source $script
   done
fi


cd $home

# load machine specific config file

stub_path=~/.zshrc_stub
if [[ -e $stub_path ]] ; then
  . $stub_path
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/alive/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/alive/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/alive/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/alive/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
