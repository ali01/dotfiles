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

PR_LINE_NUM="${CL_CYAN}%h${CL_RESET}"
PR_USERNAME="${CL_WHITE}%n${CL_RESET}"
PR_HOSTNAME="%m"
PR_SUBSHELL="%(2L.[${CL_WHITE}s${CL_RESET}].)"
PR_RET="%(?..[${CL_RED}%?${CL_RESET}])"
PR_PWD="${CL_WHITE}%~${CL_RESET}"

export TERM=xterm-color # default
export PS1='${PR_LINE_NUM} ${PR_USERNAME}(${PR_HOSTNAME})${PR_SUBSHELL}${PR_RET}: '
export RPS1='[$PR_PWD]'
export PS2='%_>' # default
