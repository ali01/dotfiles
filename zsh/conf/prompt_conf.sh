#!/bin/sh

export _GIT_PROMPT_FILEPATH=${0:A:h}

setopt prompt_percent prompt_subst
autoload colors zsh/terminfo
# if [[ "$terminfo[colors]" -ge 8 ]] ; then
   colors
# fi

autoload -U add-zsh-hook

add-zsh-hook chpwd git_update
add-zsh-hook preexec git_preexec
add-zsh-hook precmd git_precmd

# Colors.
CL_RESET="%{${reset_color}%}";
for color in RED GREEN YELLOW BLUE MAGENTA WHITE BLACK CYAN; do
   eval CL_$color='%{$fg[${(L)color}]%}'
   eval CL_BOLD_$color='%{$fg_bold[${(L)color}]%}'
done

PR_PREFIX="${CL_RED}λ${CL_RESET}"
PR_USERNAME="%n"
PR_HOSTNAME="%m"
PR_RET="%(?.. [${CL_RED}%?${CL_RESET}])"
PR_PWD="%~"

function git_update() {
  GIT_INFO="`python3 ${_GIT_PROMPT_FILEPATH}/git_prompt.py`"
  if [[ -n ${GIT_INFO} ]] ; then
    GIT_INFO_ARRAY=("${(@s: :)GIT_INFO}")

    # Commit hash.
    GIT_COMMIT=${CL_RED}$GIT_INFO_ARRAY[1]${CL_RESET}
    GIT_PROMPT="${GIT_COMMIT} "

    # Branch name.
    if [[ -n $GIT_INFO_ARRAY[2] ]] ; then
      GIT_BRANCH=${CL_CYAN}$GIT_INFO_ARRAY[2]${CL_RESET}
      GIT_PROMPT="${GIT_PROMPT}${GIT_BRANCH} "
    fi
  else
    unset GIT_PROMPT
  fi
}

function git_preexec() {
  case "$2" in
    git*|hub*|gh*|stg*)
    export GIT_DIRTY=1
    ;;
  esac
}

function git_precmd() {
  if [[ -n ${GIT_DIRTY} ]] ; then
    git_update
  fi

  unset GIT_DIRTY
}

# tmux indicators
if [[ -n $TMUX ]] ; then
  TMUX_PROMPT=" ${CL_GREEN}●${CL_RESET}"
elif [[ -z `tmux list-sessions 2>&1 | grep "no server"` ]] ; then
  TMUX_PROMPT=" ${CL_YELLOW}■${CL_RESET}"
fi


if [[ `hostname -s` != "alive-macbookpro2" ]]
then
  export PS1='${PR_PREFIX} ${PR_HOSTNAME}: '
else
  export PS1='${PR_PREFIX} '
fi

export RPS1='[${GIT_PROMPT}${PR_PWD}${TMUX_PROMPT}]'
export PS2='%_>' # default

