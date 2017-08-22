#!/bin/sh

VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"

if [ ! -d $VUNDLE_DIR ];
then
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
else
    git pull $VUNDLE_DIR
fi
