let syntastic_check_on_open       = 0 " disable on buffer start
let syntastic_enable_balloons     = 0 " disable mouse hover
let syntastic_enable_highlighting = 0 " don't highlight/change error
let syntastic_auto_jump           = 0 " disable jumping to first error
let syntastic_auto_loc_list       = 2 " don't auto start the loc list
let syntastic_enable_signs        = 1 " show signs on the left side
let syntastic_mode_map            = {
  \ 'mode': 'active',
  \ 'active_filetypes': ['javascript'],
  \ 'passive_filetypes':['css', 'python', 'html', 'php']
  \ }
