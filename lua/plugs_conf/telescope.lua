local status, actions = pcall(require, "telescope.actions")
if (not status) then
	return
end

--local actions = require('telescope.actions')
-- Global remapping
------------------------------
require("telescope").setup {
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
				["l"] = actions.file_edit
			}
		},
		file_ignore_patterns = {"./node_modules"}
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case" -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		}
	}
}

require("telescope").load_extension("fzf")
require("telescope").load_extension('file_browser')
local map = vim.api.nvim_set_keymap

--按键设置
map("n", "<leader>ff", [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {})
map("n", "<leader>fg", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {})
map("n", "<leader>fb", [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {})
map("n", "<leader>fh", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], {})
map("n", "<leader>sf", [[<cmd>lua require('telescope.builtin').file_browser()<cr>]], {})
map("n", "<leader>/", [[<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>]], {})

