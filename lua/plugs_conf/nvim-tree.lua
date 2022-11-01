
local opts = { noremap = true , silent = true}

--快捷键
vim.api.nvim_set_keymap("n", "<F3>", "<Cmd> NvimTreeToggle<CR>", opts)

require("nvim-tree").setup({
	disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = false,
    ignore_ft_on_setup  = {},
    open_on_tab         = false,
    hijack_cursor       = true,
    update_cwd          = true,
    diagnostics = {
      enable = true,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    },
    update_focused_file = {
      enable      = true,
      update_cwd  = true,
      ignore_list = {}
    },
    system_open = {
      cmd  = nil,
      args = {}
    },
    filters = {
      dotfiles = true,
      custom = {
			"*.o",
			"*.ko",
			"*.cmd"
		}
    },
    git = {
      enable = false,
    },
    view = {
      width = 25,
      hide_root_folder = false,
      side = 'left',
      mappings = {
        custom_only = false,
      },
      number = false,
      relativenumber = false,
      signcolumn = "yes"
    },
    trash = {
      cmd = nil,
      require_confirm = true
    }
  }

)
