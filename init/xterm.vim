" Abort if not gnome and cygwin
if !has("unix") || has("win32unix") || match($COLORTERM, "gnome-terminal") != -1
	finish
endif

" " Mode dependent cursors for vim
" let &t_ti.="\e[1 q"
" let &t_te.="\e[0 q"

" let &t_SI="\e[5 q"
" let &t_EI="\e[1 q"

" " F13 used to move down and up lines
" set <F13>=J
" set <S-F13>=K

" comments are in italic / underline?
highlight! Comment cterm=italic
