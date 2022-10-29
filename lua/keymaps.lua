vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = { noremap = true , silent = true}
local map = vim.api.nvim_set_keymap

--分割窗口
map("n", "s", "<nop>", opts)
map("n", "sl","<Cmd> set splitright<CR>:vsplit<CR>", opts)
map("n", "sh","<Cmd> set nosplitright<CR>:vsplit<CR>", opts)
map("n", "sj","<Cmd> set splitbelow<CR>:vsplit<CR>", opts)
map("n", "sk","<Cmd> set nosplitbelow<CR>:vsplit<CR>", opts)

--切换窗口
map("n", "<leader>l", "<c-w>l", opts)
map("n", "<leader>h", "<c-w>h", opts)
map("n", "<leader>k", "<c-w>j", opts)
map("n", "<leader>j", "<c-w>k", opts)


