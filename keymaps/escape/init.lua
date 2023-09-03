local opts = { noremap = true, expr = true }
local map = vim.keymap.set

map("i", "<Up>", "pumvisible() ? '<Up>'    : '<ESC>`^<Up>'", opts)
map("i", "<Down>", "pumvisible() ? '<Down>'  : '<ESC>`^<Down>'", opts)
-- map("i",  "<left>",  "pumvisible() ? '<left>'  : '<ESC>`^<left>'",opts)
-- map("i",  "<right>", "pumvisible() ? '<right>' : '<ESC>`^<right>'",opts)
