" Use shellcheck instead of sh to check for bash scripts
let g:neomake_sh_enabled_makers=['shellcheck']

augroup Neomake
  autocmd!
  " Run Neomake all the time
  autocmd BufWritePost,BufEnter * Neomake
augroup END
