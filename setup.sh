#!/bin/sh

DOTFILES_DIR=`pwd`

for dotfile in `ls -A $DOTFILES_DIR | grep -vw .git | grep -E "^[.].*"`; do
  ln -sf $DOTFILES_DIR/$dotfile $HOME
done

ln -sf $DOTFILES_DIR/zsh/.z* $HOME
