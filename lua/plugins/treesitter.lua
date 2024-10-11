return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"c",
					"csv",
					"diff",
					"graphql",
					"json",
					"json5",
					"lua",
					"luadoc",
					"markdown",
					"markdown_inline",
					"python",
					"ruby",
					"rust",
					"sql",
					"vim",
					"vimdoc",
				},
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = { "markdown" },
				},
				matchup = { enable = true },
				endwise = { enable = true },
			})
		end,
	},
}
