local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
	print("lspconfig is not installed")
	return
else
	print("lspconfig is installed")
end
