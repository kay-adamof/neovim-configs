vim.cmd([[
" f, F means find
nnoremap f /
nnoremap F ?

" https://vim.fandom.com/wiki/Search_for_visually_selected_text
" vnoremap ;f y/\V<C-R>=escape(@",'/\')<CR><CR>
" vnoremap f /
" vnoremap ;F y?\V<C-R>=escape(@",'/\')<CR><CR>
" vnoremap F ?
" make n/N always go in the same direction
nnoremap <expr> n 'Nn'[v:searchforward] . "zv"
nnoremap <expr> N 'nN'[v:searchforward] . "zv"
" vnoremap <expr> n 'Nn'[v:searchforward] . "zv"
" vnoremap <expr> N 'nN'[v:searchforward] . "zv"
" " search like a butterfly
cnoremap <expr> ; ButterflySemicolon()
cnoremap <expr> + ButterflyPlus()

]])
