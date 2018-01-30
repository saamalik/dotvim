#!/bin/bash

# install vimrc
mkdir -p ~/.config
[[ ! -e ~/.config/nvim ]] && ln -sf "$PWD" ~/.config/nvim
ln -sf "$PWD/vimrc" $HOME/.vimrc

# Setup minpac
git clone https://github.com/k-takata/minpac.git \
  ~/.vim/pack/minpac/opt/minpac

# Setup fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

nvim "+call minpac#update()" || vim "+call minpac#update()"
