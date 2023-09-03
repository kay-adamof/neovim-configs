local map = vim.keymap.set
local noremap = { noremap = true }
-- Some mappings with "~" work with "keybindings.json" of vscode.
-- Insert a newline below/above"
-- These are related to VScode and Karabiner keybindings .
map("i", "~p", "<C-o>o", noremap)
map("i", "~P", "<C-o>O", noremap)
map("n", "~p", "o", noremap)
map("n", "~P", "O", noremap)
-- Move a word backward
map("i", "~i", "<Esc><s-left>", noremap)
map("n", "~i", "<esc><S-Left>", noremap)
map("c", "~i", "<S-Left>", noremap)
map("v", "~i", "<esc><S-Left>", noremap)
-- Move a word forward
map("i", "~o", "<esc><S-Right>", noremap)
map("n", "~o", "<esc><S-Right>", noremap)
map("c", "~o", "<S-Right>", noremap)
map("v", "~o", "<esc><S-Right>", noremap)
-- Select a word backward
map("i", "~w", "<esc>hvb", noremap)
map("n", "~w", "hvb", noremap)
map("c", "~w", "<S-Right>", noremap)
map("v", "~w", "b", noremap)
-- Select a word forward
map("i", "~e", "<esc>ve", noremap)
map("n", "~e", "ve", noremap)
map("c", "~e", "<S-Left>", noremap)
map("v", "~e", "e", noremap)
-- Select until the first non-blank character of the line.
map("i", "~a", "<esc>v^", noremap)
map("n", "~a", "v^", noremap)
-- Select until the end of line.
map("i", "~f", "<ESC>v$", noremap)
map("n", "~f", "v$", noremap)
-- Select an entire line
map("i", "~r", "<ESC>V", noremap)
map("n", "~r", "V", noremap)
-- undo
map("i", "~z", "<ESC>u", noremap)
map("n", "~z", "u", noremap)
