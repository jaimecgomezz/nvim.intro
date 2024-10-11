-- Split windows
vim.keymap.set("n", "<C-s>", "<c-w><c-v>", { desc = "Split vertical" })
vim.keymap.set("n", "<C-t>", "<c-w><c-s>", { desc = "Split horizontal" })

-- Move between windows
vim.keymap.set("n", "<A-h>", [[<C-w>h]], { desc = "Move left window" })
vim.keymap.set("n", "<A-j>", [[<C-w>j]], { desc = "Move bottom window" })
vim.keymap.set("n", "<A-k>", [[<C-w>k]], { desc = "Move upper window" })
vim.keymap.set("n", "<A-l>", [[<C-w>l]], { desc = "Move right window" })

-- Move between wrapped lines
vim.keymap.set("n", "j", "gj", { desc = "Move to line below" })
vim.keymap.set("n", "k", "gk", { desc = "Move to line below" })
