#!/bin/bash

rm ~/.vim ~/.zshrc ~/.vimrc ~/.screenrc ~/.irssi -R
ln -s "$(pwd)/zshrc" ~/.zshrc
ln -s "$(pwd)/vimrc" ~/.vimrc
ln -s "$(pwd)/screenrc" ~/.screenrc
ln -s "$(pwd)/vim" ~/.vim
ln -s "$(pwd)/irssi" ~/.irssi

