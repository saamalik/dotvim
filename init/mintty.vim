" Mode dependent cursors for vim

let &t_ti.="\e[1 q"
let &t_te.="\e[0 q"

let &t_SI="\e[5 q"
let &t_EI="\e[1 q"

" mintty app escape key (tmux and non-tmux)
" https://code.google.com/p/mintty/wiki/Tips#Avoiding_escape_timeout_issues_in_vim
if &term =~ '^screen'
  let &t_ti="\ePtmux;\e\e[?7727h\e\\".&t_ti
  let &t_te="\ePtmux;\e\e[?7727l\e\\".&t_te
else
  let &t_ti="\e[?7727h".&t_ti
  let &t_te="\e[?7727l".&t_te
endif
noremap <Esc>O[ <Esc>
noremap! <Esc>O[ <Esc>
