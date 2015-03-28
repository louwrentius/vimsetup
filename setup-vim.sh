#!/bin/bash

SAVEPATH=$(pwd)
DOTVIM=~/.vim
DOTVIMRC=~/.vimrc

if [ -e $DOTVIM ]
then
    echo "Folder $DOTVIM exists, continue? [y/n]"
    read OVERWRITEDOTVIM
    if [ $OVERWRITEDOTVIM == "y" ]
    then
        mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
        cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git
    fi
fi

if [ -e $DOTVIMRC ]
then
    echo "File $DOTVIMRC exists, continue [y/n]"
    read OVERWRITEDOTVIMRC
    if [ $OVERWRITEDOTVIMRC == "y" ]
    then
        cp $SAVEPATH/.vimrc $DOTVIMRC
    fi
fi


