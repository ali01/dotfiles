#!/bin/sh

setopt prompt_percent prompt_subst
autoload colors zsh/terminfo
# if [[ "$terminfo[colors]" -ge 8 ]] ; then
   colors
# fi

for color in RED GREEN YELLOW BLUE MAGENTA WHITE BLACK CYAN; do
   eval CL_$color='%{$fg[${(L)color}]%}'
   eval CL_BOLD_$color='%{$fg_bold[${(L)color}]%}'
done
CL_RESET="%{${reset_color}%}";

PR_PREFIX="${CL_RED}λ${CL_RESET}"
PR_USERNAME="%n"
PR_HOSTNAME="%m"
PR_RET="%(?..[${CL_RED}%?${CL_RESET}])"
PR_PWD="%~"

if [[ `hostname -s` != "alive-macbookpro" ]]
then
    export PS1="${PR_PREFIX} ${PR_HOSTNAME}${PR_RET}: "
else
    export PS1="${PR_PREFIX} "
fi

export RPS1='[$PR_PWD]'
export PS2='%_>' # default
