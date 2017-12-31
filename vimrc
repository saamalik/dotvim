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
Plug 'derekwyatt/vim-scala'
Plug 'leafgarland/typescript-vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'morhetz/gruvbox'
Plug 'KeitaNakamura/neodark.vim'

" General
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/ListToggle'
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'lambdalisue/vim-gita', {'on': ['Gita']}
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'neomake/neomake'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Older
" Plug 'kien/ctrlp.vim'
" Plug 'scrooloose/syntastic'
" Plug 'Lokaltog/vim-easymotion'
" Plug 'mileszs/ack.vim'

" Add plugins to &runtimepath
call plug#end()

" Source initialization files
runtime! init/**.vim
