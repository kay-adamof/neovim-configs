-- vim.keymap.set('', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
-- vim.keymap.set('', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
local opt = { noremap = true, silent = true }

vim.keymap.set("n", "[b", "<cmd>BufferLineCycleNext<CR>", opt)
vim.keymap.set("n", "b]", "<cmd>BufferLineCyclePrev<CR>", opt)
vim.keymap.set("n", "bp", "<cmd>BufferLineMoveNext<CR>", opt)
vim.keymap.set("n", "bp", "<cmd>BufferLineMovePrev<CR>", opt)
vim.keymap.set("n", "be", "<cmd>BufferLineSortByExtension<CR>", opt)
vim.keymap.set("n", "bd", "<cmd>BufferLineSortByDirectory<CR>", opt)
-- vim.keymap.set('n', '<mymap> ':lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>',opt)
