local map = vim.keymap.set
local cmd = vim.cmd
local silent = { silent = true }
local noremap = { noremap = true }
local ml = MapLeader
local al = AltLeader
local source = "$XDG_CONFIG_HOME/nvim/init.lua"

-- Close all windows and exit nvim
map("n", al .. "w", ":qa!<cr>")
-- Quit the current window
map("n", al .. "c", "<C-w>q", silent)
-- Close buffer
-- map("n", al .. "C", "<cmd>bdelete<cr>", silent)
-- Source the configuration file
map("n", ";so", "<cmd>so " .. source .. "<cr>", { noremap = true, silent = true })
-- map('n',al..'so',('so ':)'''')

map("n", "h", ":tabp<cr>", silent)
map("n", "l", ":tabn<cr>", silent)
--[[ map('n','H',':bn<cr>',silent)
map('n','L',':bN<cr>',silent) ]]

-- fold beautifully"
map("n", "zZ", "zRzXzMzr", noremap)

--  command query"
map("n", ":", "q:i", noremap)

--  then just press Ctrl-J whenever you want to split a line.
map("n", "<enter>", "i<cr><esc>", noremap)

map("v", ";", "*", noremap)
map("v", "+", "#", noremap)

map("n", "gGY", ":let @+=expand('%:f')<CR>",noremap) -- Copoy absolute path
map("n", "gY", ":let @+=expand('%:p')<CR>",noremap) -- Copy path
map("n", "gy", ":let @+=expand('%:t')<CR>",noremap) -- Copy name
