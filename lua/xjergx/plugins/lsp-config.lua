return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
        },
        ensure_installed = {
          "lua-language-server",
          "typescript-language-server",
          "html-lsp",
          "css-lsp",
          "json-lsp",
          "vue-language-server",
          "prettier",
          "volar",
          "csharp-lsp",
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = {
        "lua_ls",
        "tsserver",
        "html",
        "cssls",
        "jsonls",
        "vuels",
        "volar",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.volar.setup({
        capabilities = capabilities,
        filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename" })
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    lazy = false,
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.diagnostics.eslint_d,
          null_ls.builtins.completion.spell,
          null_ls.builtins.formatting.prettier,
        },
      })
    end,
  },
}
