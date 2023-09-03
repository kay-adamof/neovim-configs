vim.cmd([[ 
function! ButterflySemicolon()
  let cmdtype = getcmdtype()
  if cmdtype == ':'
    " -- Perform Ex command map action
  elseif cmdtype == '/'
    return "\<C-G>"
  elseif cmdtype == '?'
    return "\<C-T>"
  elseif cmdtype == '@'
    " -- Perform input() prompt map action
  else
    " -- Perform other command-line prompt action
  endif
endfunction
function! ButterflyPlus()
  let cmdtype = getcmdtype()
  if cmdtype == ':'
    " -- Perform Ex command map action
  elseif cmdtype == '/'
    return "\<C-T>"
  elseif cmdtype == '?'
    return "\<C-G>"
  elseif cmdtype == '@'
    " -- Perform input() prompt map action
  else
    " -- Perform other command-line prompt action
  endif
endfunction
]])
