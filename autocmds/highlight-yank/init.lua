-- https://github.com/lopesivan/neovim-config/blob/cb5d198e8e48cbe576413d68c7e50d683b1ad0ec/after/plugin/on_yank.lua
--
local group = vim.api.nvim_create_augroup("LuaHighlight", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
	group = group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "Substitute",
			timeout = 300,
			on_macro = true,
		})
	end,
})
