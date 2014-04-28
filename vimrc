" ----------
" Vim Config
" ----------
"
" TL;DR
" Run sync-bundles.sh to symlink this file to your home directory (e.g. $HOME/.vimrc)
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like vundle. Instead, add it to one of the files in
" .vim/init, or create a new one.

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" The master vundler hahahah (evil laugh)
Bundle 'gmarik/vundle'

" Syntax and language improvements
Bundle 'pangloss/vim-javascript'
Bundle 'gilesbowkett/vim-handlebars'
Bundle 'digitaltoad/vim-jade'
Bundle 'saamalik/mango.vim'
Bundle 'chriskempson/vim-tomorrow-theme'

" General
Bundle 'BufOnly.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/ListToggle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter'
Bundle 'henrik/vim-qargs'
Bundle 'kien/ctrlp.vim'
Bundle 'mhinz/vim-startify'
Bundle 'mileszs/ack.vim'
Bundle 'saamalik/netrw'
" Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'bling/vim-airline'

syntax on
filetype plugin indent on

" Source initialization files
runtime! init/**.vim
