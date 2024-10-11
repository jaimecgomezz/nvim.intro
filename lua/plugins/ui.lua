return {
	{ -- GOAT colorscheme
		"rebelot/kanagawa.nvim",
		priority = 1000,
		opts = {},
		init = function()
			vim.cmd.colorscheme("kanagawa")
		end,
	},
	{ -- Simple yet powerfull statusline
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		opts = {
			extensions = {
				"man",
				"quickfix",
				"fugitive",
				"nvim-tree",
			},
			options = {
				ignore_focus = {
					"dapui_watches",
					"dapui_breakpoints",
					"dapui_scopes",
					"dapui_console",
					"dapui_stacks",
					"dap-repl",
				},
			},
		},
	},
}
