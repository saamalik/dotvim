" Mode dependent cursors for vim

" mintty app escape key (tmux and non-tmux)
" https://code.google.com/p/mintty/wiki/Tips#Avoiding_escape_timeout_issues_in_vim
if &term =~ '^screen'
	let g:mintty_app_escape_on = "\ePtmux;\e\e[?7727h\e\\"
	let g:mintty_app_escape_off = "\ePtmux;\e\e[?7727l\e\\"
else
	let g:mintty_app_escape_on = "\e[?7727h"
	let g:mintty_app_escape_off = "\e[?7727l"
endif

let &t_ti=g:mintty_app_escape_on.&t_ti."\e[1 q"
let &t_te=g:mintty_app_escape_off.&t_te."\e[0 q"

let &t_SI="\e[5 q"
let &t_EI="\e[1 q"

set <S-F6>=[17;2~

noremap <Esc>O[ <Esc>
noremap! <Esc>O[ <C-c>
