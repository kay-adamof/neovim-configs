vim.cmd [[
augroup autowrite
  " Do not set "au!".That causes unwilling effect.
  " au!
  " autocmd InsertLeave,TextChanged,FocusLost * silent! write
  autocmd WinLeave,FocusLost * silent! write
  " https://stackoverflow.com/questions/2490227/how-does-vims-autoread-work
  autocmd FocusGained,BufEnter * :silent! !
  autocmd FocusGained,BufEnter * :silent!

  autocmd InsertEnter,WinLeave * set nocursorline
  autocmd InsertLeave,WinEnter * set cursorline cursorlineopt=number,line
  autocmd CmdlineEnter : set nocursorline  | redraw
  autocmd CmdlineLeave : set cursorline cursorlineopt=number,line


  " File types
  " au BufNewFile,BufRead *.man                set filetype=man
  " au BufNewFile,BufRead *.term.log           set filetype=sh
  " au BufNewFile,BufRead *.pde               set filetype=java
  " au BufNewFile,BufRead *.coffee-processing set filetype=coffee
  " au BufNewFile,BufRead Dockerfile*         set filetype=dockerfile

augroup END
]]
