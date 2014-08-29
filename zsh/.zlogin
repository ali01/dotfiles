# ran for login shells
if [[ $OS_TYPE == *linux* ]] ; then
  exec ssh-agent "$SHELL"
fi
