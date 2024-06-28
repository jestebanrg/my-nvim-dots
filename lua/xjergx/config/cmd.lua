-- vim.api.nvim_create_autocmd("BufWritePre", {
--   group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
--   pattern = "*",
--   callback = function()
--     vim.lsp.buf.format()
--   end,
-- })

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "incSearch",
      timeout = 100,
    })
  end,
})

vim.api.nvim_exec(
  [[
  command! LazyGit FloatermNew --height=0.9 --width=0.9 lazygit
]],
  false
)
