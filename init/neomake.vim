" Use shellcheck instead of sh to check for bash scripts
let g:neomake_sh_enabled_makers=['shellcheck']

" When writing a buffer
call neomake#configure#automake('w')
