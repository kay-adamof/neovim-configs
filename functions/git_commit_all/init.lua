function GitCommitAddAll()
	vim.cmd("Git add -- .") -- add message
	vim.cmd("Git commit") -- add message
end
