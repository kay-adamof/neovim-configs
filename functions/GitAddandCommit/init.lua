-- Do Git add and commit just at current file
function GitAddandCommit()
	vim.cmd("Git add %") -- add message
	vim.cmd("Git commit") -- add message
end
