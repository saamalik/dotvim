let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_collect_identifiers_from_tags_files = 1

" The default JavaScript omnicomplete SUCKS!
let g:ycm_filetype_specific_completion_to_disable = {
    \   'javascript' : 1,
    \ }
