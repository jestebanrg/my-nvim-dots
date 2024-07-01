return {
  -- vim close tag
  {
    'alvan/vim-closetag',
    config = function()
      vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml,*.jsx,*.tsx,*.vue'
    end
  },
  {
    "m4xshen/autoclose.nvim",
    config = function()
      require("autoclose").setup({
        insert = true,
        select = true,
        disable_filetype = { "TelescopePrompt" },
      })
    end,
  },
}
