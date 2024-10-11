return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		format_on_save = {
			timeout_ms = 1000,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			json = { "jq" },
			lua = { "stylua" },
			bash = { "shfmt" },
			rust = { "rustfmt" },
			ruby = { "rubocop" },
			sql = { "sql_formatter" },
			graphql = { "prettierd" },
			javascript = { "prettierd" },
			typescript = { "prettierd" },
		},
	},
	-- stylua: ignore
	keys = {
		{ "<leader>bf", function() require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 2000 }) end, desc = "Format buffer", },
	},
}
