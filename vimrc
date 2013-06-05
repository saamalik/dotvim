execute pathogen#infect()
execute pathogen#helptags()

"Mode dependent cursors for vim
let &t_ti.="\e[1 q"
let &t_te.="\e[0 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"

let g:mapleader = ","
let g:Powerline_symbols = "fancy"
let g:gitgutter_eager = 0
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1    " Put errors on left side

"CtrlP
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>F :CtrlPCurFile<CR>
nnoremap <leader>B :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMixed<CR>
nnoremap <leader>M :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>
nnoremap <leader>T :CtrlPBufTag<CR>
nnoremap <leader>l :CtrlPLine<CR>
let g:ctrlp_extensions          = ['tag', 'line']
let g:ctrlp_mruf_max            = 25
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_by_filename         = 1
let g:ctrlp_open_new_file       = 'r'
let g:ctrlp_open_multiple_files = '3hjr'
let g:ctrlp_root_markers        = ['tags']
let g:ctrlp_working_path_mode   = 0
let g:ctrlp_buftag_types        = {
  \ 'css'        : '--language-force=css --css-types=citm',
  \ 'javascript' : '--language-force=javascript --javascript-types=fv',
  \ 'haxe'       : '--language-force=haxe --haxe-types=fvpcit'
  \ }

" Syntastic
let g:syntastic_check_on_open       = 0
let g:syntastic_enable_balloons     = 0
let g:syntastic_enable_highlighting = 0
let g:syntastic_auto_jump           = 1
let g:syntastic_auto_loc_list       = 1
let g:syntastic_enable_signs        = 1
let g:syntastic_mode_map            = {
  \ 'mode': 'active',
  \ 'active_filetypes': ['javascript'],
  \ 'passive_filetypes':['css', 'python', 'html', 'php']
  \ }

syntax on
filetype plugin indent on

"colorscheme badwolf

"let g:solarized_termtrans=1
"let g:solarized_termcolors=256 " set this if no solarized pallete
set background=dark
colorscheme solarized
call togglebg#map("<F5>")


"highlight GitGutterAdd guifg=#009900 guibg=NONE ctermfg=2 ctermbg=233
"highlight GitGutterChange guifg=#bbbb00 guibg=NONE ctermfg=3 ctermbg=233
"highlight GitGutterDelete guifg=#ff2222 guibg=NONE ctermfg=1 ctermbg=233

set nocompatible
set noswapfile

" set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start

set path=.,** " . - file path, ** all files inside current directory
set wildignore+=*/target/*,*.class

set mouse=a
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
set noshowmode   " Hide insert / update status line

set incsearch
set hlsearch

set ignorecase " make searches case-insensitive, unless they contain upper-case letters:
set smartcase

set encoding=utf-8  " UTF-8 Default encoding

set timeoutlen=500

set titlestring=%f title    " Display filename in terminal window
set rulerformat=%l:%c ruler " Display current column/line (if powerline not working)
set showcmd                 " Show commands at bottom right
" set splitbelow              " Split windows BELOW current window!
set winminheight=0          " Window minimum height
" set scrolloff=8             " always have at least 8 lines before the window's bottom


" Don't use smart/auto indent; the ftplugin indent is better
" set smartindent
" set autoindent

set switchbuf=useopen,usetab " use tab if it already exists
set wildmenu " command line completion

set tags=./tags,tags

" Gdiff disable diff
command! Gdiffoff diffoff | q | Gedit

" CtrlP Buffer <Ctrl-Shift-P>
noremap  :CtrlPBuffer<CR>

" nnoremap <leader>n :set noai<cr>
" nnoremap <leader>m :set ai<cr>
nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader><space> :NERDTreeToggle<cr>
nnoremap <leader>rr :set relativenumber<cr>
nnoremap <leader>rn :set number<cr>:set norelativenumber<cr>
nnoremap <leader>rN :set nonumber<cr>
nnoremap <leader>bd :bprev<cr>:bdelete #<cr>

" Clear screen (ctrl+shift) since ctrl+l bound to window
noremap  <C-l>

" Make Y consistent with D and C
nnoremap Y y$

" Save file
map <C-s> :write<CR>
map! <C-s> <Esc>:write<CR>

" Scrolling
noremap <space> <c-d>

" Visual search
vnoremap * y/\V<c-r>=escape(@", '\')<cr><cr>
vnoremap # y/\V<c-r>=escape(@", '\')<cr><cr>

"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

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
