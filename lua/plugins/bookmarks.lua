return {
	"MattesGroeger/vim-bookmarks",
	init = function()
		vim.g.bookmark_no_default_key_mappings = 1
		vim.g.bookmark_save_per_working_dir = 1
		vim.g.bookmark_auto_save = 1
	end,
	keys = {
		{ "mm", "<CMD> BookmarkToggle <CR>", desc = "Toggle bookmark" },
		{
			"mM",
			function()
				vim.ui.input({ prompt = "Comment: " }, function(comment)
					if comment ~= nil and comment ~= "" then
						cmd = "BookmarkAnnotate " .. comment
						vim.cmd(cmd)
					end
				end)
			end,
			desc = "Toggle commentary bookmark",
		},
		{ "mn", "<CMD> BookmarkNext <CR>", desc = "Next bookmark" },
		{ "mp", "<CMD> BookmarkPrev <CR>", desc = "Previous bookmark" },
		{ "ml", "<CMD> BookmarkShowAll <CR>", desc = "Show all bookmark" },
		{ "mx", "<CMD> BookmarkClearAll <CR>", desc = "Clear all bookmark" },
	},
}
