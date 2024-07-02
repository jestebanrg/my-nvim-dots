return {
  -- bufferline: buffer
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

  -- barbecue: statusline
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "SmiteshP/nvim-navic",
    },
    config = function()
      require("barbecue").setup({
        create_autocmd = false,
      })
    end,
  },

  --spectre
  {
    "windwp/nvim-spectre",
    config = function()
      require("spectre").setup()

      vim.keymap.set("n", "<leader>S", function()
        require("spectre").open()
      end)

      vim.keymap.set("n", "<leader>sw", function()
        require("spectre").open_visual()
      end)

      vim.keymap.set("v", "<leader>sw", function()
        require("spectre").open_visual({ select_word = true })
      end)

      vim.keymap.set("n", "<leader>sp", function()
        require("spectre").open_file_search()
      end)

      vim.keymap.set("n", "<leader>so", function()
        require("spectre").open_file_search({ select_word = true })
      end)
    end,
  },

  {
    "voldikss/vim-floaterm",
  },
  {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}},
  {
    "jose-elias-alvarez/typescript.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  },

  {
    "mfussenegger/nvim-lint",
    linters_by_ft = {
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
    },
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
      
      vim.keymap.set("n", "gs", "<Plug>Ysurround", { desc = "surround" })
      vim.keymap.set("n", "gS", "<Plug>Yssurround", { desc = "surround" })
      vim.keymap.set("n", "gss", "<Plug>Yssurround", { desc = "surround" })

    end,
  },
}
