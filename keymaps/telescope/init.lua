local noremap = { noremap = true }
local cmd = "<cmd>Telescope "
local map = vim.keymap.set

map("n", ";f", cmd .. "builtin<cr>", noremap)

