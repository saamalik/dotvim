let mapleader = ","
let maplocalleader = ";"

" *** VIM ***
nnoremap Y y$

nnoremap <Down> <C-E>
nnoremap <Up> <C-Y>

nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader>db :bprev<cr>:bdelete #<cr>

nnoremap <F6>  :!echo "reset"<cr>
nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Clear screen (ctrl+shift) since ctrl+l bound to move window right
noremap  <C-l>

" Ctrl + Shift + Enter moves to end of line
noremap!  <C-o>A

" Start / End of braces {  }
map [[ ?{<CR>w99[{
map ]] /}<CR>b99]}
map ][ j0[[%/{<CR>
map [] k$]]%?}<CR>

" Visual search
vnoremap * y/\V<c-r>=escape(@", '\')<cr><cr>
vnoremap # y/\V<c-r>=escape(@", '\')<cr><cr>

"Smart way to move between windows
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

" Save file
map <C-s> :write<CR>
map! <C-s> <Esc>:write<CR>

" Current file name replace forward slashes  with . (useful in js)
cnoremap <expr> <C-R><C-J> substitute(expand("%:r"), "/", ".", "g")
inoremap <expr> <C-R><C-J> substitute(expand("%:r"), "/", ".", "g")

cnoremap <C-A> <C-B>

" *** PLUGINS ***

" CtrlP
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>F :CtrlPCurFile<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMixed<CR>
nnoremap <leader>M :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPBufTagAll<CR>
nnoremap <leader>p :CtrlPTag<CR>
nnoremap <leader>T :CtrlPBufTag<CR>
nnoremap <leader>L :CtrlPLine<CR>

" MiniBufExpl
nnoremap <F3> :MBEToggle<cr>

" NERDTree
nnoremap <F4> :NERDTreeToggle<cr>
nnoremap <leader><space> :NERDTreeFind<cr>
