local config = {
	clangd = {
		cmd = {
     		"clangd",
      		"--header-insertion=never",
		}
	}
}

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require('lspconfig')

for name, config in pairs(config) do
	config.capabilities = capabilities
    nvim_lsp[name].setup(config)
end

