#!/bin/bash
git pull
git submodule update --init --recursive # updates vundle

vim +BundleInstall! +qall
