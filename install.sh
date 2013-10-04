#!/bin/bash
rm -r ~/.vim
cp -r . ~/.vim
rm -rf ~/.vim/.git

cp vimrc ~/.vimrc
cp gvimrc ~/.gvimrc
