-- If the cursor is in the head of line, backspace key acts as ctrl-J;
-- otherwise, delete a char.
local opts = { noremap = true, expr = true }
vim.keymap.set("n", "<bs>", "getpos('.')[2]==1 ? 'b<S-j>' : 'X'", opts)
vim.keymap.set("n", "<del>", "match(getline('.'),'^$') ? 'x' : 'dd'", opts)
