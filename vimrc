" ~/.vim/vimrc, also loaded by Neovim through the init.vim symlink.
"
" One file, shared by Neovim and Vim 9. Neovim's defaults are the baseline and
" the has('nvim') branches cover the differences. Plugins are plain Vim
" packages in pack/plugins/start, installed and updated by ./install.sh.

if !has('nvim')
  " Any vimrc disables defaults.vim, so pull it back in, then add the few
  " things Neovim turns on out of the box.
  unlet! skip_defaults_vim
  source $VIMRUNTIME/defaults.vim
  set autoindent autoread hidden hlsearch smarttab
  set laststatus=2 ttimeoutlen=50
  set undodir=~/.vim/undo
  silent! call mkdir(&undodir, 'p')
  nnoremap Y y$
  silent! packadd comment   " gc / gcc, bundled with Vim 9.1.0375+
endif

if has('nvim')
  " No remote plugins here: skip the provider probes and their :checkhealth noise
  let g:loaded_python3_provider = 0
  let g:loaded_node_provider = 0
  let g:loaded_perl_provider = 0
  let g:loaded_ruby_provider = 0
endif

filetype plugin indent on
syntax enable

" Files
set noswapfile nowritebackup
set undofile

" Editing
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set nowrap
set nrformats=              " <C-a>/<C-x> treat every number as decimal
set listchars=tab:>-,trail:-,eol:$

" Search
set ignorecase smartcase infercase
set showmatch
if executable('rg')
  set grepprg=rg\ --vimgrep\ --smart-case
  set grepformat=%f:%l:%c:%m
endif

" UI
set number relativenumber
set signcolumn=yes
set scrolloff=3
set splitright
set switchbuf=useopen,usetab
set mouse=a
set title
set background=dark
set updatetime=100          " gitgutter refresh
set wildignore+=*/node_modules/*,*/target/*,*/dist/*

" Keys
let mapleader = ','
let maplocalleader = ';'

nnoremap <leader>/ :nohlsearch<CR>
nnoremap <leader>db :bprevious<CR>:bdelete #<CR>
nnoremap gp `[v`]

" Scroll without moving the cursor
nnoremap <Down> <C-e>
nnoremap <Up> <C-y>
noremap <C-j> <C-e>
noremap <C-k> <C-y>

" Save (needs `stty -ixon`, see bashrc)
noremap <C-s> :write<CR>
noremap! <C-s> <Esc>:write<CR>

" Search for the visual selection
vnoremap * y/\V<C-r>=escape(@", '\/')<CR><CR>
vnoremap # y?\V<C-r>=escape(@", '\?')<CR><CR>

" Command line: <C-a> to line start; <C-r><C-j> inserts the file path with dots
cnoremap <C-a> <C-b>
cnoremap <expr> <C-r><C-j> substitute(expand('%:r'), '/', '.', 'g')
inoremap <expr> <C-r><C-j> substitute(expand('%:r'), '/', '.', 'g')

nnoremap <F1> :make<CR>

" fzf (brew install fzf)
if isdirectory('/opt/homebrew/opt/fzf')
  set runtimepath+=/opt/homebrew/opt/fzf
endif
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :Files %:h<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>G :GFiles %:h<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>L :BLines<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>T :BTags<CR>

" Autocommands
function! s:StripTrailingWhitespace() abort
  let l:view = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:view)
endfunction

augroup vimrc
  autocmd!
  " Strip trailing whitespace on save for code files
  autocmd BufWritePre *.vim,vimrc,*.c,*.h,*.cpp,*.hpp,*.m,*.mm,*.rb,*.yml,*.yaml,*.js,*.ts,*.css,*.scss,*.html,*.xml,*.erb,*.java,*.php,*.feature
        \ call s:StripTrailingWhitespace()
  if has('nvim')
    autocmd TermOpen * setlocal nonumber norelativenumber
  endif
augroup END
