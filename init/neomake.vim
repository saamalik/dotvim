" Use shellcheck instead of sh to check for bash scripts
let g:neomake_sh_enabled_makers=['shellcheck']

augroup Neomake
  autocmd!
  " Run Neomake on write the time
  autocmd BufWinEnter,BufWritePost * Neomake
augroup END

" call neomake#configure#automake({
"   \ 'BufWritePost': {'delay': 0},
"   \ 'BufWinEnter': {},
"   \ }, 500)
