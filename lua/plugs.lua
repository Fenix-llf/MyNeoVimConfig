vim.cmd [[
		augroup packer_user_config
				autocmd!
				autocmd BufWritePost plugins.lua source <afile> | PackerSync
		augroup end
]]


--这里管理增加删除要使用的插件
--安装新插件先添加再使用PackerInstall
--删除插件再使用PackerClean
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'nvim-tree/nvim-tree.lua'
	use 'navarasu/onedark.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	-- nvim-cmp
	use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
	use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
	use 'hrsh7th/cmp-path'     -- { name = 'path' }
	use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
	use 'hrsh7th/nvim-cmp'
	-- vsnip
	use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
	use 'hrsh7th/vim-vsnip'
	use 'rafamadriz/friendly-snippets'
	use 'onsails/lspkind.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'simrat39/symbols-outline.nvim'
	use 'voldikss/vim-floaterm'
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
end)
