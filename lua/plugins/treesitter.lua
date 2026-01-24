return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },

			ensured_installed = {
				"python",
				"c",
				"cpp",
				"lua",
				"html",
				"go",
				"javascript",
				"css",
				"java",
				"json",
				"rust",
				"arduino",
				"php",
				"dart",
				"htmldjango",
				"dockerfile",
				"bash",
				"typescript",
				"jinja",
			},

			auto_install = true,
		})
	end,
}
