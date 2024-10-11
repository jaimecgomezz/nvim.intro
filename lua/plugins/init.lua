return {
	{ -- Automatic tags management
		"ludovicchabant/vim-gutentags",
	},
	{ -- Nice icons
		"nvim-tree/nvim-web-devicons",
		opts = {},
	},
	{ -- Comment lines, visual blocks, etc
		"numToStr/Comment.nvim",
		config = {},
	},
	{ -- Automatic project recognition, aka changing your current directory when opening files
		"airblade/vim-rooter",
		init = function()
			vim.g.rooter_buftypes = { "" }
			vim.g.rooter_patterns = { ".git" }
			vim.g.rooter_change_directory_for_non_project_files = "current"
		end,
	},
	{ -- Visualize Neovim registers
		"tversteeg/registers.nvim",
		lazy = false,
		cmd = "Registers",
		name = "registers",
		opts = {
			window = {
				max_width = 80,
				border = "single",
			},
		},
		keys = {
			{ '"', mode = { "n", "v" } },
			{ "<C-R>", mode = "i" },
		},
	},
	{ -- Better gx implementation
		"chrishrb/gx.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		cmd = { "Browse" },
		init = function()
			vim.g.netrw_nogx = 1
		end,
		config = true,
		submodules = false,
		keys = {
			{ "gx", "<cmd>Browse<cr>", mode = { "n", "x" } },
		},
	},
}
