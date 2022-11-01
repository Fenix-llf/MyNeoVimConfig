local lsp_installer = require "nvim-lsp-installer"

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
	sumneko_lua = require "lsp.lua", -- /lua/lsp/lua.lua
	clangd = require "lsp.c",
	cmake = require "lsp.cmake",
	pyright = require "lsp.python",
}

-- 自动安装 LanguageServers
for name, _ in pairs(servers) do
	local server_is_found, server = lsp_installer.get_server(name)
	if server_is_found then
		if not server:is_installed() then
			print("Installing " .. name)
			server:install()
		end
	end
end


vim.fn.sign_define('DiagnosticSignError', {
	texthl = 'DiagnosticSignError',
	text = '',
})
vim.fn.sign_define('DiagnosticSignWarn', {
	texthl = 'DiagnosticSignWarn',
	text = '',
})
vim.fn.sign_define('DiagnosticSignHint', {
	texthl = 'DiagnosticSignHint',
	text = '',
})
vim.fn.sign_define('DiagnosticSignInfo', {
	texthl = 'DiagnosticSignInfo',
	text = '',
})
