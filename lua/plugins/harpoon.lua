return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>hh", function()
			local item = harpoon:list():get_by_value(vim.fn.expand("%"))

			if not item then
				harpoon:list():add()
			else
				harpoon:list():remove()
			end
		end)

		for n = 1, 9 do
			vim.keymap.set("n", "<leader>" .. n, function()
				harpoon:list():select(n)
			end)

			vim.keymap.set("n", "<leader>h" .. n, function()
				harpoon:list():replace_at(n)
			end)
		end

		vim.keymap.set("n", "<leader><leader>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list(), {
				border = "single",
				ui_width_ratio = 0.40,
				ui_fallback_width = 60,
			})
		end, { desc = "Open harpoon window" })

		vim.keymap.set("n", "<leader>hx", function()
			harpoon:list():clear()
		end, { desc = "Open harpoon window" })
	end,
}
