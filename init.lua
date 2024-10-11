-- Welcome to Neovim!
--
-- This is the entry point for you Neovim configuration. Vim executes the commands in this file when it starts up. This
-- file is always used and is recommended to be located at:
--
--      ~/.config/nvim/init.vim         (Unix and OSX)
--      ~/AppData/Local/nvim/init.vim   (Windows)
--
-- If you ever make changes to your configuration, it's recommended to quit vim and start it again for the changes to
-- take effect.

-- Organization
--
-- Whilst you're free to organize it as you wish, we'll use the standard separation-by-concern to simplify things.

-- Modules
--
-- Editor configurations to make Neovim look and feel the way you like it.
require("options")
--
-- Mappings that should make your life easier.
require("mappings")
--
-- Behavior that is automatically enabled.
require("autocmds")
--
-- Package manager configuration: https://github.com/folke/lazy.nvim
require("lazier")
