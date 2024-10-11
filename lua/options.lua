-- Leader keys
--
-- Used as entry points for special sequences of key presses that trigger specific behavior defined by the user, e.g.
-- revealing the file tree, spawning a terminal, re-sizing the current window, etc. They can be set to almost any key,
-- but the `space bar` and the `comma` are generally accepted as sensible defaults due to their ease of reach.
--
-- This is how I normally use each:
--
-- Core functionality, things I always need.
vim.g.mapleader = [[ ]]
-- Additional utilities, which a rarely use.
vim.g.maplocalleader = [[,]]

-- Options
--
-- Below you'll find some sensible default configurations that you'll probably end up with, each with a short
-- description that should convey their purpose. You may also explore each in depth by opening their `help` page:
--
--    :help hidden

-- Global
--
-- Disable mouse support
vim.opt.mouse = ""
-- Disable bell noise, ffs.
vim.opt.errorbells = false
-- Disable some vim messages displayed at the bottom line.
vim.opt.shortmess:append("sI")
-- Go to previous/next line with h,l, left arrow and right arrow when cursor reaches end/beginning of line
vim.opt.whichwrap:append("<>[]hl")
-- Better color representation for terminals.
vim.opt.termguicolors = true
-- Use the system clipboard, for intuitive copying/pasting.
vim.opt.clipboard = "unnamedplus"
-- Completion behavior.
vim.opt.completeopt = {
	-- Show the completion options even if there's a single match.
	"menuone",
	-- Select none by default.
	"noselect",
	-- Implement the selection only when selected.
	"noinsert",
}

-- Matching characters ([({})])
--
-- The cursor will briefly jump to the matching brace when you insert one.
vim.opt.showmatch = true
-- Tenths of a second to show the matching character.
vim.opt.matchtime = 3

-- Status line
--
-- Always show the status line.
vim.opt.laststatus = 2
-- Hide messages of the current mode on the last line.
vim.opt.showmode = false

-- Indentation
--
-- Number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = 2
-- Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
vim.opt.softtabstop = 2
-- Number of spaces to use for each step of (auto)indent. Press `>>` or `<<`.
vim.opt.shiftwidth = 2
-- Replace <Tab> press with the amount of spaces specified by `softtabstop`.
vim.opt.expandtab = true
-- Copy the structure of the existing lines indent when auto-indenting a new line.
vim.opt.copyindent = true
-- Round indent to multiple of `shiftwidth`. Useful for uneven amounts of <Tab>, like lines with distinct lengths.
vim.opt.shiftround = true
-- Do smart auto-indenting when starting a new line, like increasing the indentation it if entering a code block.
vim.opt.smartindent = true
-- Copy indent from current line when starting a new line.
vim.opt.autoindent = true

-- Searching
--
-- Ignore cases by default
vim.opt.ignorecase = true
-- When cases are manually typed, apply them to the search.
vim.opt.smartcase = true

-- Margins
-- Hide the ruler message shown at the bottom right of the screen. It includes it displays the line number, the column
-- number, the virtual column number, and the relative position of the cursor in the file (as a percentage).
vim.opt.ruler = false
-- Show the line numbers at the left margin of the window.
vim.opt.number = true
-- Use absolute line numbers, rather than numbers relative the your current line.
vim.opt.relativenumber = false
-- Minimal number of columns used for displaying the line numbers.
vim.opt.numberwidth = 2
-- Keep `scrolloff` number of lines below or above your current line, useful for keeping your current line at the center
-- of the window.
vim.opt.scrolloff = 999
-- Highlight the text line of the cursor. Useful to easily spot the cursor.
vim.opt.cursorline = true
-- Always show the sign column. Useful for a concise experience.
vim.opt.signcolumn = "yes"

-- Splits
--
-- Splitting a window will put the new window below the current one.
vim.opt.splitbelow = true
-- Vertically splitting a window will put the new window right of the current one.
vim.opt.splitright = true

-- Text
--
-- Lines will not wrap and only part of long lines will be displayed.
vim.opt.wrap = false
-- Maximum width of text that is being inserted. A longer line will be broken after white space to get this width.
vim.opt.textwidth = 80

-- Files
--
-- Prevent buffers from being unloaded when they're aren't being displayed.
vim.opt.hidden = true
-- When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim,
-- automatically read it again.
vim.opt.autoread = true
-- Don't use swapfiles.
vim.opt.swapfile = false
-- Saves undo history to an undo file when writing a buffer to a file, and restores undo history from the same file on
-- buffer read.
vim.opt.undofile = true

-- Folding
--
-- Enable auto-folding
vim.opt.foldenable = true
-- Fold automatically up until the level specified
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- Diagnostics
--
-- Configure how the diagnostic messages should be shown to the user.
vim.diagnostic.config({
	update_in_insert = true,
	underline = false,
	severity_sort = true,
	virtual_text = false,
	signs = true,
	float = {
		scope = "cursor",
		source = true,
		focusable = false,
		border = "single",
	},
})

-- Neovide specific configurations
--
-- Disable cursor visual shenanigans.
vim.g.neovide_cursor_vfx_mode = ""
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_cursor_antialiasing = false
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_cursor_animate_in_insert_mode = false
