return {
	{
		"FabijanZulj/blame.nvim",
		lazy = false,
		config = function()
			require("blame").setup({
				date_format = "%d.%m.%Y",
				relative_date_if_recent = true, -- this is relative only for the latest month
				virtual_style = "right_align",
				views = {
					virtual = true,
				},
				commit_detail_view = "vsplit",
				mappings = {
					commit_info = "i",
					stack_push = "<TAB>",
					stack_pop = "<BS>",
					show_commit = "<CR>",
					close = { "<esc>", "q" },
				},
			})
		end,
	},
}
