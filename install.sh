#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  sudo apt-get update
  sudo apt-get install exuberant-ctags
elif [[ "$OSTYPE" == "darwin"* ]]; then
  brew reinstall ctags
  brew reinstall vim
fi

sudo mkdir ~/.vim
sudo cp -R vim/* ~/.vim/
sudo cp vimrc ~/.vimrc
sudo cp vimrc.before ~/.vimrc.before
sudo cp ctags ~/.ctags
