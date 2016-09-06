#!/bin/sh
if [[ $(uname) =~ ^CYGWIN ]]; then
  cp ~/dotfiles/.vimrc ~/.vimrc
  cp ~/dotfiles/.bashrc ~/.bashrc
else
  ln -sf ~/dotfiles/.vimrc ~/.vimrc
  ln -sf ~/dotfiles/.bashrc ~/.bashrc
fi
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
