fun! ExToggle(dir)
  if &filetype != "netrw"
    call ExOpen(a:dir)
  else
    call ExClose()
  endif
endf

fun! ExOpen(dir)
  let g:netrw_browse_split=0    " open files in current window
  let g:netrw_banner=1          " banner
  exe "Explore " . a:dir
endf

fun! ExClose()
  while &filetype == "netrw"
    exe "normal! \<C-O>"
  endw
endf

fun! VexToggle(dir)
  if exists("t:vex_buf_nr")
    call VexClose()
  else
    call VexOpen(a:dir)
  endif
endf

fun! VexOpen(dir)
  let g:netrw_browse_split=4    " open files in previous window
  let g:netrw_banner=0          " no banner
  let vex_width = 27

  exe "Vexplore " . a:dir
  let t:vex_buf_nr = bufnr("%")
  wincmd H

  call VexSize(vex_width)
endf

fun! VexClose()
  let cur_win_nr = winnr()
  let target_nr = ( cur_win_nr == 1 ? winnr("#") : cur_win_nr )

  1wincmd w
  close
  unlet t:vex_buf_nr

  exe (target_nr - 1) . "wincmd w"
  call NormalizeWidths()
endf

fun! VexSize(vex_width)
  exe "vertical resize" . a:vex_width
  set winfixwidth
  call NormalizeWidths()
endf

fun! NormalizeWidths()
  let eadir_pref = &eadirection
  set eadirection=hor
  set equalalways! equalalways!
  let &eadirection = eadir_pref
endf

" let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+,^DS_Store$'
" let g:netrw_hide=1              " hide hidden files
let g:netrw_dirhistmax=100      " keep more history
let g:netrw_altfile=1           " last edited file '#'
let g:netrw_liststyle=3         " thin
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically
let g:netrw_use_errorwindow=0   " suppress error window
