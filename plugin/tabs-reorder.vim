function! MoveCurrentTab(value)
  if a:value == 0
    return
  endif
  let move = a:value - 1
  let move_to = tabpagenr() + move
  if move_to < 0
    let move_to = 0
  endif
  exe 'tabmove '.move_to
endfunction

map <M-PageUp> :call MoveCurrentTab(-1)<Esc>
map <M-PageDown> :call MoveCurrentTab(1)<Esc>

