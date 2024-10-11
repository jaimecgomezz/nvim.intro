return {
	"mhinz/vim-startify",
	lazy = false,
	init = function()
		vim.cmd([[
          let g:ascii = [
                \ "                       ",
                \ "                       ",
                \ "                       ",
                \ "                       ",
                \ "██╗   ██╗██╗███╗   ███╗",
                \ "██║   ██║██║████╗ ████║",
                \ "██║   ██║██║██╔████╔██║",
                \ "╚██╗ ██╔╝██║██║╚██╔╝██║",
                \ " ╚████╔╝ ██║██║ ╚═╝ ██║",
                \ "  ╚═══╝  ╚═╝╚═╝     ╚═╝",
                \ "                       ",
                \ "                       ",
                \ "                       ",
                \ ]
          let g:startify_custom_header ='startify#pad(g:ascii)'
        ]])
	end,
	-- stylua: ignore
	keys = {
    { "<leader>vs", "<CMD> Startify <CR>", desc = "Startify" },
  },
}
