let mapleader = ","
let maplocalleader = ";"

" *** VIM ***
nnoremap Y y$

nnoremap <Down> <C-E>
nnoremap <Up> <C-Y>

nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader>db :bprev<cr>:bdelete #<cr>

nnoremap <F1>   :make<CR>
nnoremap <F10>  :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Start / End of braces {  }
" map [[ ?{<CR>w99[{
" map ]] /}<CR>b99]}
" map ][ j0[[%/{<CR>
" map [] k$]]%?}<CR>

" Visual search
vnoremap * y/\V<c-r>=escape(@", '\')<cr><cr>
vnoremap # y/\V<c-r>=escape(@", '\')<cr><cr>

"Smart way to move between windows
" noremap <C-h> <C-w>h
" noremap <C-l> <C-w>l

" Smart way to scroll
noremap <C-j> <C-e>
noremap <C-k> <C-y>

" Save file
noremap <C-s> :write<CR>
noremap! <C-s> <Esc>:write<CR>

" Current file name replace forward slashes  with . (useful in js)
cnoremap <expr> <C-R><C-J> substitute(expand("%:r"), "/", ".", "g")
inoremap <expr> <C-R><C-J> substitute(expand("%:r"), "/", ".", "g")

" move to beginning
cnoremap <C-A> <C-B>

" *** PLUGINS ***

" fzf.vim
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :Files %:h<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>G :GFiles %:h<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>L :BLines<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>T :BTags<CR>
