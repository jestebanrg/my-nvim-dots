return {
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
      ensure_installed = { "lua", "vim", "c_sharp", "bash", "json", "vimdoc", "query", "elixir", "javascript", "html", "css", "typescript", "tsx", "vue", "tsx" },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      }
    end,
  }
}
