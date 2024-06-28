return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>gs", ":Gitsigns toggle_signs<CR>", { desc = "Toggle git signs" })
      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview git hunk" })
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle git blame" })
    end,
  },
  {
    "sindrets/diffview.nvim",
    config = function()
      require("diffview").setup()
      vim.keymap.set("n", "<leader>dv", ":DiffviewOpen<CR>", { desc = "Open diffview" })
      vim.keymap.set("n", "<leader>dV", ":DiffviewClose<CR>", { desc = "Close diffview" })
    end,
  },
}
