# ran for login shells
if [[ $linux == true ]] ; then
  exec ssh-agent "$SHELL"
fi
