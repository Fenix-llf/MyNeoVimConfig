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
    use 'ervandew/supertab'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'preservim/nerdtree'
	use 'navarasu/onedark.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-tree.lua'	
end)
