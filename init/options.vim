set noswapfile
set backspace=indent,eol,start

set path=.,** " . - file path, ** all files inside current directory
set wildmenu " command line completion
set wildignore+=*/target/*,*.class
set tags=./tags,tags
set suffixesadd+=.html
set switchbuf=useopen,usetab " use tab if it already exists
set hidden " Allow buffers dirty
set pastetoggle=<F2>

set spellfile=~/.vim/spell/en.add
set spelllang=en_us

set ruler " Line and col bottom right
set number " Line numbers
set laststatus=2 " show the status line always

set incsearch " Incremental search
set hlsearch  " Highlight search
set showmatch " Show matching brackets

set ignorecase " make searches case-insensitive
set smartcase  " ... unless they contain upper-case letters
set infercase  " infer proper case when doing keyword completion

set mouse=a
if &term =~ '^screen'
	set ttymouse=xterm2 " tmux knows the extended mouse mode
endif

" Text Formatting/Layout
set formatoptions=tcrqn      " See Help (complex)
set autoindent    " autoindent
set smartindent   " smartindent
set smarttab      " Use shiftwidth to tab at line beginning
set tabstop=2     " tab spacing (settings below are just to unify it)
set softtabstop=2 " unify
set shiftwidth=2  " unify
set noexpandtab   " Give me tabs or give me death
set nowrap        " do not wrap lines
set nrformats=    " treat all numerals as decimal
set listchars=tab:>-,trail:-,eol:$

set encoding=utf-8  " UTF-8 Default encoding

set timeoutlen=500

set titlestring=%f title    " Display filename in terminal window
set rulerformat=%l:%c ruler " Display current column/line (if powerline not working)
set showcmd                 " Show commands at bottom right
set splitright							" split to right and bottom
set winminheight=0          " Window minimum height
set scrolloff=3             " always have at least 8 lines before the window's bottom
