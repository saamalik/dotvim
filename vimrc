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

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

call plug#begin('~/.vim/plugged')

" Syntax and language improvements
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'gilesbowkett/vim-handlebars'
Plug 'digitaltoad/vim-jade'
Plug 'saamalik/mango.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'morhetz/gruvbox'
Plug 'derekwyatt/vim-scala'

" General
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/ListToggle'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim'
Plug 'saamalik/netrw'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'lambdalisue/vim-gita', {'on': ['Gita']}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tommcdo/vim-exchange'
Plug 'mattn/emmet-vim'

" Older
" Plug 'Lokaltog/vim-easymotion'

" Add plugins to &runtimepath
call plug#end()

" Source initialization files
runtime! init/**.vim
