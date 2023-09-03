function ChangeToLocalDir()
	vim.cmd("lchdir%:p:h")
end
