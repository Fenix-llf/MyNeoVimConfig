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
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
-- code action
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- go xx
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
-- diagnostic
map('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
-- map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
-- leader + =
map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
-- map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
-- map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
-- map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
-- map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)

