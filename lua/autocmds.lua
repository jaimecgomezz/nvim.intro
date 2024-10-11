-- Dynamically create missing directories on :write
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function(event)
		local dirname = vim.fs.dirname(event.match)
		vim.fn.mkdir(dirname, "p", tonumber("0755", 8))
	end,
})
