return {
	"chentoast/marks.nvim",
	config = function()
		require("marks").setup({
			default_mappings = true,
			builtin_marks = { ".", "<", ">", "^" },
			cyclic = true,
			force_write_shada = false,
			refresh_interval = 250,
			sign_priority = 30,
			excluded_filetypes = { "gitcommit", "gitrebase", "svn", "hgcommit" },
			bookmark_0 = {
				sign = "⚑",
				virt_text = "hello world",
				annotate = false,
			},
			mappings = {},
		})
	end,
}
