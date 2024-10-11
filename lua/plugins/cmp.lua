return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"onsails/lspkind.nvim",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"L3MON4D3/LuaSnip",
		"windwp/nvim-autopairs",
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")

		local format = lspkind.cmp_format({
			mode = "symbol_text",
			ellipsis_char = "...",
			menu = {
				nvim_lsp = "[LSP]",
				nvim_lua = "[LUA]",
				luasnip = "[SNIP]",
				buffer = "[BUF]",
				path = "[PATH]",
				treesitter = "[TREE]",
				["vim-dadbod-completion"] = "[DB]",
				dap = "[DAP]",
			},
		})

		cmp.setup({
			preselect = cmp.PreselectMode.None,
			formatting = { format = format },
			completion = { completeopt = "menu,menuone,noselect,noinsert" },
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			view = {
				entries = {
					name = "custom",
					follow_cursor = true,
				},
			},
			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "treesitter" },
				{ name = "nvim_lua" },
			},
			mapping = {
				["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
				["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
				["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
			},
		})

		-- `:` cmdline completition.
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{
					name = "cmdline",
					option = {
						ignore_cmds = { "Man", "!" },
					},
				},
			}),
		})

		-- SQL/dadbod completition
		cmp.setup.filetype({ "sql" }, {
			sources = {
				{ name = "vim-dadbod-completion" },
				{ name = "nvim_lsp" },
				{ name = "buffer" },
			},
		})

		-- Autopairs integration
		cmp.event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())
	end,
}
