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
	continue
    else
	exit 1
    fi
fi

mkdir -p ~/.vim/autoload ~/.vim/bundle && wget -q https://tpo.pe/pathogen.vim -O ~/.vim/autoload/pathogen.vim 
cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git

if [ -e $DOTVIMRC ]
then
    echo "File $DOTVIMRC exists, continue [y/n]"
    read OVERWRITEDOTVIMRC
    if [ $OVERWRITEDOTVIMRC == "y" ]
    then
	continue
    else
	exit 1
    fi 
fi
cp $SAVEPATH/.vimrc $DOTVIMRC


