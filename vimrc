set nocompatible
filetype off

" set rtp+=~/.vim/bundle/vundle/,~/.vim/bundle/powerline/powerline/bindings/vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Bundle 'MarcWeber/ultisnips'
" Bundle 'elzr/vim-json'
" Bundle 'Lokaltog/powerline'
" Bundle 'juvenn/mustache.vim'
" Bundle 'boazy/ZoomWin'
" Bundle 'marijnh/tern_for_vim'

Bundle 'mhinz/vim-startify'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'henrik/vim-qargs'
Bundle 'gilesbowkett/vim-handlebars'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tsaleh/vim-matchit.git'
Bundle 'mikewest/vimroom'
Bundle 'Valloric/ListToggle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'techlivezheng/vim-plugin-minibufexpl'
Bundle 'tpope/vim-ragtag'
Bundle 'airblade/vim-gitgutter'
Bundle 'Raimondi/delimitMate'
Bundle 'saamalik/mango.vim'
" Ruby blocks
" Bundle 'jgdavey/vim-blockle'

syntax on
filetype plugin indent on

" Mode dependent cursors for vim
let &t_ti.="\e[1 q"
let &t_te.="\e[0 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"

let g:mapleader = ","

let g:gitgutter_eager = 0

let g:startify_show_dir = 1
let g:startify_change_to_dir = 0
let g:startify_custom_header = [
			\ '   _____                 _ ',
			\ '  / ____|               | |',
			\ ' | (___   __ _  __ _  __| |',
			\ '  \___ \ / _` |/ _` |/ _` |',
			\ '  ____) | (_| | (_| | (_| |',
			\ ' |_____/ \__,_|\__,_|\__,_|',
			\ ]

" let g:tern#command = ["node", "C:/cygwin/home/saamalik/.vim/bundle/tern_for_vim/node_modules/tern/bin/tern"]
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

let g:vimroom_sidebar_height = 0

let g:delimitMate_jump_expansion = 1 " jump to closing brace
let g:delimitMate_expand_cr      = 1 " expand on enter

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_semantic_triggers =  {
"     \   'c' : ['->', '.'],
"     \   'objc' : ['->', '.'],
"     \   'ocaml' : ['.', '#'],
"     \   'cpp,objcpp' : ['->', '.', '::'],
"     \   'perl' : ['->'],
"     \   'php' : ['->', '::'],
"     \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
"     \   'lua' : ['.', ':'],
"     \   'erlang' : [':'],
"     \   'html' : ['<', '</'],
"     \ }

let g:miniBufExplBuffersNeeded = 1
let g:miniBufExplUseSingleClick = 1

nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
			\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
			\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <Down> <C-E>
nnoremap <Up> <C-Y>

" Configure EasyMotion.
let g:EasyMotion_leader_key = '<Space>'

"CtrlP
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>F :CtrlPCurFile<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMixed<CR>
nnoremap <leader>M :CtrlPMRUFiles<CR>
" nnoremap <leader>t :CtrlPTag<CR>
nnoremap <leader>t :CtrlPBufTagAll<CR>
nnoremap <leader>T :CtrlPBufTag<CR>
nnoremap <leader>L :CtrlPLine<CR>
let g:ctrlp_extensions          = ['tag', 'line']
let g:ctrlp_match_window        = 'max:20'
let g:ctrlp_mruf_max            = 25
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_by_filename         = 1
let g:ctrlp_open_new_file       = 'r'
let g:ctrlp_open_multiple_files = '3hjr' " three h rest hidden
let g:ctrlp_arg_map             = 1      " prompt for multi open
let g:ctrlp_root_markers        = ['tags']
let g:ctrlp_working_path_mode   = 0
let g:ctrlp_buftag_types        = {
  \ 'css'        : '--language-force=css --css-types=citm',
	\ 'javascript' : '--language-force=javascript',
  \ 'haxe'       : '--language-force=haxe --haxe-types=fvpcit'
  \ }
	" \ 'javascript' : '--language-force=js',
	" \ 'javascript' : '--language-force=javascript',
  " \ 'javascript' : '--language-force=javascript --javascript-types=fv',

" Syntastic
let g:syntastic_check_on_open       = 0 " disable on buffer start
let g:syntastic_enable_balloons     = 0 " disable mouse hover
let g:syntastic_enable_highlighting = 0 " don't highlight/change error
let g:syntastic_auto_jump           = 0 " disable jumping to first error
let g:syntastic_auto_loc_list       = 2 " don't auto start the loc list
let g:syntastic_enable_signs        = 1 " show signs on the left side
let g:syntastic_mode_map            = {
  \ 'mode': 'active',
  \ 'active_filetypes': ['javascript'],
  \ 'passive_filetypes':['css', 'python', 'html', 'php']
  \ }

"colorscheme badwolf

"let g:solarized_termtrans=1
"let g:solarized_termcolors=256 " set this if no solarized pallete
set background=dark
" colorscheme solarized
colorscheme mango
call togglebg#map("<F5>")

set noswapfile

" set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start

set path=.,** " . - file path, ** all files inside current directory
set wildignore+=*/target/*,*.class

set mouse=a

if &term =~ '^screen'
	" tmux knows the extended mouse mode
	set ttymouse=xterm2
endif

set pastetoggle=<F2>
set clipboard=unnamed

set ruler " Line and col bottom right
set number " Line numbers

set showmatch " Show matching brackets

set hidden " Allow buffers dirty

" Set color to 256
" Not necessary anymore--configure mintty to change term to 256 color
" set t_Co=256

set laststatus=2 " show the status line always
" set noshowmode   " Hide insert / update status line

set incsearch
set hlsearch

set ignorecase " make searches case-insensitive
set smartcase  " ... unless they contain upper-case letters
set infercase  " infer proper case when doing keyword completion

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
" set splitbelow              " Split windows BELOW current window!
set winminheight=0          " Window minimum height
set scrolloff=3             " always have at least 8 lines before the window's bottom

set splitright							" split to right and bottom
set switchbuf=useopen,usetab " use tab if it already exists
set wildmenu " command line completion

set tags=./tags,tags
set suffixesadd+=.html

set spellfile=~/.vim/spell/en.add
set spelllang=en_us

" Gdiff disable diff
command! Gdiffoff diffoff | q | Gedit

" Svn status
command! Svnstatus cexpr system("svn status \| awk 'BEGIN { OFS = \":\"  } {print $2,1,$1}'")

nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader><space> :NERDTreeFind<cr>
nnoremap <F3> :MBEToggle<cr>
nnoremap <F4> :NERDTreeToggle<cr>
nnoremap <leader>db :bprev<cr>:bdelete #<cr>

" Clear screen (ctrl+shift) since ctrl+l bound to move window right
noremap  <C-l>

" Ctrl + Shift + Enter moves to end of line
noremap!  <C-o>A

" Make Y consistent with D and C
nnoremap Y y$

" Start / End of braces {  }
map [[ ?{<CR>w99[{
map ]] /}<CR>b99]}
map ][ j0[[%/{<CR>
map [] k$]]%?}<CR>

" Save file
map <C-s> :write<CR>
map! <C-s> <Esc>:write<CR>

" Current file name replace forward slashes  with . (useful in js)
cnoremap <expr> <C-R><C-J> substitute(expand("%:r"), "/", ".", "g")
inoremap <expr> <C-R><C-J> substitute(expand("%:r"), "/", ".", "g")

" Visual search
vnoremap * y/\V<c-r>=escape(@", '\')<cr><cr>
vnoremap # y/\V<c-r>=escape(@", '\')<cr><cr>

"Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Smart way to scroll
map <C-j> <C-e>
map <C-k> <C-y>

" Move lines up and down (http://vim.wikia.com/wiki/Moving_lines_up_or_down)
" Using Ctrl+Shift-J, and Ctrl+Shift-K
nnoremap  :m .+1<CR>==
nnoremap  :m .-2<CR>==
inoremap  <Esc>:m .+1<CR>==gi
inoremap  <Esc>:m .-2<CR>==gi
vnoremap  :m '>+1<CR>gv=gv
vnoremap  :m '<-2<CR>gv=gv

" ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" Javscript omnicomplete sucks-let YouCompleteMe defer to keywords in open buffers
autocmd FileType javascript set omnifunc=

" Set handlebars template directory as mustache
autocmd BufRead,BufNewFile */templates/* set syntax=handlebars | runtime! ftplugin/handlebars.vim
