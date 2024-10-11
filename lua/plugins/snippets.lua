return {
	"L3MON4D3/LuaSnip",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "v2.*",
	build = "make install_jsregexp",
	config = function()
		local luasnip = require("luasnip")

		-- Extend HTML snippets to framework-specific files
		luasnip.filetype_extend("sql", { "sql" })
		luasnip.filetype_extend("svelte", { "html" })
		luasnip.filetype_extend("javascriptreact", { "html" })
		luasnip.filetype_extend("typescriptreact", { "html" })

		-- Extend documentation snippets to to specific file types
		luasnip.filetype_extend("typescript", { "tsdoc", "html" })
		luasnip.filetype_extend("javascript", { "jsdoc", "html" })
		luasnip.filetype_extend("lua", { "luadoc" })
		luasnip.filetype_extend("python", { "pydoc" })
		luasnip.filetype_extend("rust", { "rustdoc" })
		luasnip.filetype_extend("cs", { "csharpdoc" })
		luasnip.filetype_extend("java", { "javadoc" })
		luasnip.filetype_extend("c", { "cdoc" })
		luasnip.filetype_extend("cpp", { "cppdoc" })
		luasnip.filetype_extend("php", { "phpdoc" })
		luasnip.filetype_extend("kotlin", { "kdoc" })
		luasnip.filetype_extend("ruby", { "rdoc" })
		luasnip.filetype_extend("sh", { "shelldoc" })

		require("luasnip/loaders/from_vscode").lazy_load()
		require("luasnip/loaders/from_snipmate").lazy_load()
		require("luasnip/loaders/from_lua").lazy_load()
	end,
	-- stylua: ignore
	keys = {
    { "<C-x>", function() require("luasnip").expand() end, desc = "Expand snippet", mode = "i"  }
  },
}
