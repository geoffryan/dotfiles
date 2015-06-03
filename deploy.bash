#!/bin/bash

# Lovingly ripped off from Micha Gorelick (mynameisfiber/Shell-Config).

DOTPATH=`pwd`
BACKUP=~/.dotfile.backup

if [ ! -d "$BACKUP" ]; then
    mkdir $BACKUP
fi

echo "Configuring shell"
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc $BACKUP/bashrc
fi
ln -sf $DOTPATH/bashrc ~/.bashrc
if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile $BACKUP/bash_profile
fi
ln -sf $DOTPATH/bash_profile ~/.bash_profile

echo "Configuring VIM"
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc $BACKUP/vimrc
fi
ln -sf $DOTPATH/vimrc ~/.vimrc

echo "Configuring Git"
if [ -f ~/.gitconfig ]; then
    mv ~/.gitconfig $BACKUP/gitconfig
fi
ln -sf $DOTPATH/gitconfig ~/.gitconfig

echo "Configured!"
