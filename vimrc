execute pathogen#infect()

let &t_ti.="\eP\e[2 q\e\\"
let &t_SI.="\eP\e[5 q\e\\"
let &t_EI.="\eP\e[1 q\e\\"
let &t_te.="\eP\e[0 q\e\\"


set nocompatible
set noswapfile

set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start

syntax on

set path=.,,**

set mouse=a
set pastetoggle=<F2>

set ruler " Line and col bottom right
set number " Line numbers
"
" set t_Co=256

set incsearch
set hlsearch

set timeoutlen=500
set smartindent
set autoindent

set switchbuf=usetab " use tab if it already exists
set wildmenu " command line completion

filetype plugin indent on

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
"highlight Pmenu ctermbg=238 gui=bold

"colorscheme mustang
"colorscheme desert
colorscheme badwolf


"if has('gui_running')
"  colorscheme vividchalk
"else
"endif 


