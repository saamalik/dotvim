if !has("nvim")
  finish
endif

augroup TerminalStuff
   autocmd!
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
