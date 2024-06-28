return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", 	
    "nvim-tree/nvim-web-devicons",
  },
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
    vim.keymap.set("n", "<Tab>p", "<cmd>BufferPrevious<cr>", { desc = "Previous buffer" }),
    vim.keymap.set("n", "<Tab>n", "<cmd>BufferNext<cr>", { desc = "Next buffer" }),
    vim.keymap.set("n", "<Tab>d", "<cmd>BufferClose<cr>", { desc = "Close buffer" }),
    vim.keymap.set("n", "<Tab><Tab>", "<cmd>BufferPick<cr>", { desc = "Pick buffer" }),
    vim.keymap.set("n", "<Tab>b", "<cmd>BufferOrderByBufferNumber<cr>", { desc = "Sort by buffer number" }),
    vim.keymap.set("n", "<Tab>o", "<cmd>BufferOrderByDirectory<cr>", { desc = "Sort by directory" }),
    vim.keymap.set("n", "<Tab>l", "<cmd>BufferOrderByLanguage<cr>", { desc = "Sort by language" }),
    vim.keymap.set("n", "<Tab>s", "<cmd>BufferOrderByWindowNumber<cr>", { desc = "Sort by window number" }),
	},
	version = "^1.0.0",
}
