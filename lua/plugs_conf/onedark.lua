return require('onedark').setup({
		style = 'dark',
   	 	transparent = true,
    	term_colors = false,
    	ending_tildes = false,
    	cmp_itemkind_reverse = false,
    	code_style = {
        	comments = 'italic',
        	keywords = 'none',
        	functions = 'none',
        	strings = 'none',
        	variables = 'none'
    	},
    	colors = {},
    	highlights = {},
    	diagnostics = {
        	darker = true,
        	undercurl = true,
        	background = true,
    	},
})

