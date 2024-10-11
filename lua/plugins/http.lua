return {
	"rest-nvim/rest.nvim",
	ft = "http",
	init = function()
		vim.filetype.add({ extension = { ["http"] = "http" } })
	end,
	keys = {
		{ "<leader>ss", "<CMD> Rest run <CR>", desc = "Run request under cursor" },
		{ "<leader>sp", "<CMD> Rest last <CR>", desc = "Run previous request" },
		{ "<leader>sl", "<CMD> Rest logs <CR>", desc = "Open rest logs" },
		{ "<leader>sc", "<CMD> Rest cookies <CR>", desc = "Open rest cookies" },
		{ "<leader>se", "<CMD> Rest env <CR>", desc = "Open rest env" },
		{ "<leader>sE", "<CMD> Rest env select <CR>", desc = "Set rest env" },
	},
}
