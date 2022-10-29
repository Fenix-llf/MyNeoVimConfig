vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = { noremap = true , silent = true}
local map = vim.api.nvim_set_keymap

--分割窗口
map("n", "s", "<nop>", opts)
map("n", "s<right>","<Cmd> set splitright<CR>:vsplit<CR>", opts)
map("n", "s<left>","<Cmd> set nosplitright<CR>:vsplit<CR>", opts)
map("n", "s<up>","<Cmd> set splitbelow<CR>:vsplit<CR>", opts)
map("n", "s<donw>","<Cmd> set nosplitbelow<CR>:vsplit<CR>", opts)

--切换窗口
map("n", "<leader><right>", "<c-w>l", opts)
map("n", "<leader><left>", "<c-w>h", opts)
map("n", "<leader><up>", "<c-w>j", opts)
map("n", "<leader><down>", "<c-w>k", opts)

