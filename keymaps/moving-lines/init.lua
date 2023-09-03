-- TIPS:
-- ====
-- In insert mode:
-- ctrl-t: indent current line forward
-- ctrl-d: indent current line backward
-- ====

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<C-k>", ":move-2<cr>", opts)
map("n", "<C-j>", ":move+<cr>", opts)
map("n", "<C-h>", "<<", opts)
map("n", "<C-l>", ">>", opts)

map("i", "<C-h>", "<C-d>", opts)
map("i", "<C-l>", "<C-t>", opts)

map("x", "<C-k>", ":move-2<cr>gv", opts)
map("x", "<C-j>", ":move'>+<cr>gv", opts)
map("x", "<C-h>", "<gv", opts)
map("x", "<C-l>", ">gv", opts)

map("x", "<", "<gv", opts)
map("x", ">", ">gv", opts)
