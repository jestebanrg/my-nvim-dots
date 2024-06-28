return {
  "m4xshen/autoclose.nvim",
  config = function()
    require("autoclose").setup({
      insert = true,
      select = true,
      disable_filetype = { "TelescopePrompt" },
    })
  end,
}
