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
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = { --[[ things you want to change go here]]
    },
  },
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

  --autosave nvim
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        enabled = true,   -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
        execution_message = {
          message = function() -- message to print on save
            return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
          end,
          dim = 0.18,                                  -- dim the color of `message`
          cleaning_interval = 1250,                    -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
        },
        trigger_events = { "InsertLeave", "TextChanged" }, -- vim events that trigger auto-save. See :h events
        -- function that determines whether to save the current buffer or not
        -- return true: if buffer is ok to be saved
        -- return false: if it's not ok to be saved
        condition = function(buf)
          local fn = vim.fn
          local utils = require("auto-save.utils.data")

          if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
            return true           -- met condition(s), can save
          end
          return false            -- can't save
        end,
        write_all_buffers = false, -- write all buffers when the current one meets `condition`
        debounce_delay = 135,     -- saves the file at most every `debounce_delay` milliseconds
        callbacks = {             -- functions to be executed at different intervals
          enabling = nil,         -- ran when enabling auto-save
          disabling = nil,        -- ran when disabling auto-save
          before_asserting_save = nil, -- ran before checking `condition`
          before_saving = nil,    -- ran before doing the actual save
          after_saving = nil,     -- ran after doing the actual save
        },
      })
    end,
  },
}
