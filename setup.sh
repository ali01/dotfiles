#!/bin/sh

DOTFILES_DIR=`pwd`

# Creating top-level dotfile symlinks
for dotfile in `ls -A $DOTFILES_DIR | grep -vw .git | grep -E "^[.].*"`; do
  ln -sf $DOTFILES_DIR/$dotfile $HOME
done

# Creating zsh dotfile symlinks
ln -sf $DOTFILES_DIR/zsh/.z* $HOME

# Configuring environment
mkdir -p ~/home
mkdir -p ~/.ssh/master
touch ~/.ssh/known_hosts
cp -n $DOTFILES_DIR/ssh/config-base ~/.ssh/config
