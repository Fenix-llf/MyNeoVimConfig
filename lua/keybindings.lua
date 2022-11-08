vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = { noremap = true , silent = true}
local map = vim.api.nvim_set_keymap

--分割窗口
map("n", "s", "<nop>", opt)
map("n", "s<right>","<Cmd> set splitright<CR>:vsplit<CR>", opt)
map("n", "s<left>","<Cmd> set nosplitright<CR>:vsplit<CR>", opt)
map("n", "s<up>","<Cmd> set splitbelow<CR>:split<CR>", opt)
map("n", "s<donw>","<Cmd> set nosplitbelow<CR>:split<CR>", opt)

--切换窗口
map("n", "<leader><right>", "<c-w>l", opt)
map("n", "<leader><left>", "<c-w>h", opt)
map("n", "<leader><up>", "<c-w>k", opt)
map("n", "<leader><down>", "<c-w>j", opt)
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
-- code action
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
-- go xx
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
-- diagnostic
map('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
map('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
map('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
-- map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
-- leader + =
map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
-- map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
-- map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
-- map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
-- map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
map('n', '<F7>', '<cmd>FloatermNew<CR>', opt)
map('n', '<F8>', '<cmd>SymbolsOutline<CR>', opt)
map("n", "<leader><", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>>", ":BufferLineCycleNext<CR>", opt)
