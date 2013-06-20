call NERDTreeAddKeyMap({
        \ 'key': '<RightMouse>',
        \ 'callback': 'NERDTreeYankCurrentNode',
        \ 'quickhelpText': 'put full path of current node into the default register' })

function! NERDTreeYankCurrentNode()
    execute "normal! \<RightMouse>"
    let n = g:NERDTreeFileNode.GetSelected()
    if n != {}
        call setreg('"', n.path.str())
    endif
endfunction
