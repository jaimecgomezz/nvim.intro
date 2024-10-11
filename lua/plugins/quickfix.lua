return {
	{
		"kevinhwang91/nvim-bqf",
		ft = "qf",
		opts = {
			preview = {
				auto_preview = false,
				show_title = false,
				winblend = 0,
			},
		},
	},
	{
		"stevearc/quicker.nvim",
		ft = "qf",
		opts = {
			type_icons = {
				E = "E ",
				W = "W ",
				I = "I ",
				N = "N ",
				H = "H ",
			},
		},
		keys = {
			{
				"<localleader>q",
				function()
					require("quicker").toggle({ focus = true, min_height = 10 })
				end,
				desc = "Toggle quickfix",
			},
			{
				"<localleader>l",
				function()
					require("quicker").toggle({ loclist = true, focus = true, min_height = 10 })
				end,
				desc = "Toggle loclist",
			},
		},
	},
}
