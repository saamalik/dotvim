let g:ctrlp_reuse_window      = 'startify'
let ctrlp_extensions          = ['tag', 'line']
let ctrlp_match_window        = 'max:20'
let ctrlp_mruf_max            = 25
let ctrlp_clear_cache_on_exit = 0
let ctrlp_by_filename         = 1
let ctrlp_open_new_file       = 'r'
let ctrlp_open_multiple_files = '3hjr' " three h rest hidden
let ctrlp_arg_map             = 1      " prompt for multi open
let ctrlp_root_markers        = ['tags']
let ctrlp_working_path_mode   = 0
let ctrlp_buftag_types        = {
  \ 'css'        : '--language-force=css --css-types=citm',
  \ 'javascript' : '--language-force=javascript',
  \ 'haxe'       : '--language-force=haxe --haxe-types=fvpcit'
  \ }
  " \ 'javascript' : '--language-force=js',
  " \ 'javascript' : '--language-force=javascript',
  " \ 'javascript' : '--language-force=javascript --javascript-types=fv',

" let ctrlp_user_command = 'ag %s -l --nocolor -g ""'
