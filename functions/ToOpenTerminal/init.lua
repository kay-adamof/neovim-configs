function ToOpenTerminal()
  vim.cmd [[
		augroup terminal_cmd
  		au!
  		autocmd TermOpen * startinsert
  		autocmd BufWinEnter,WinEnter term://* startinsert!
  		autocmd Filetype gitcommit startinsert!
		augroup END
	]]
  vim.cmd "lua ChangeToLocalDir()"
  vim.cmd "split"
  vim.cmd "terminal"
end
