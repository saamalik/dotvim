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

packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Syntax and language improvements
call minpac#add('pangloss/vim-javascript')
call minpac#add('mxw/vim-jsx')
call minpac#add('gilesbowkett/vim-handlebars')
call minpac#add('digitaltoad/vim-jade')
call minpac#add('derekwyatt/vim-scala')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('tomlion/vim-solidity')
call minpac#add('hashivim/vim-terraform')
" call minpac#add('chriskempson/vim-tomorrow-theme')
" Plug 'morhetz/gruvbox'
" Plug 'KeitaNakamura/neodark.vim'

" General
call minpac#add('jiangmiao/auto-pairs')
" Plug 'Valloric/ListToggle'
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" Plug 'lambdalisue/vim-gita', {'on': ['Gita']}
"
call minpac#add('airblade/vim-gitgutter')
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call minpac#add('junegunn/fzf.vim')
call minpac#add('github/copilot.vim')
call minpac#add('mhinz/vim-startify')
call minpac#add('neomake/neomake')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('mattn/emmet-vim')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')

" Load everything
packloadall

set runtimepath+=/opt/homebrew/opt/fzf

" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)

" " Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" imap <c-x><c-l> <plug>(fzf-complete-line)

" Older
" Plug 'kien/ctrlp.vim'
" Plug 'scrooloose/syntastic'
" Plug 'Lokaltog/vim-easymotion'
" Plug 'mileszs/ack.vim'

" Add plugins to &runtimepath
" call plug#end()

" Source initialization files
runtime! init/**.vim
