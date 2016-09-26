#!/bin/bash

# TODO add code to add vim-plug

echo "Installing vimrc link"
ln -sf $PWD/vimrc $HOME/.vimrc

cd dotfiles

# Backup bashrc
cp ~/.bashrc ~/.bashrc.bak

path="${PWD#$HOME/}"
echo "Dotfile path: $path"
for f in *; do
	echo "Linking file: $f"
	ln -sf $path/$f $HOME/.$f
done

# windows nodejs can't follow symlinks
case `uname` in
    *CYGWIN*) echo "Copy file: jshintrc"; rm $HOME/.jshintrc; cp -f jshintrc $HOME/.jshintrc;;
esac
