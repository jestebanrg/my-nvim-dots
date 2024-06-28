return {
  "kndndrj/nvim-dbee",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  build = function()
    -- Install tries to automatically detect the install method.
    -- if it fails, try calling it with one of these parameters:
    --    "curl", "wget", "bitsadmin", "go"
    require("dbee").install()
  end,
  config = function()
    require("dbee").setup(--[[optional config]])

    vim.keymap.set("n", "<leader>db", function()
      require("dbee").open()
    end, { desc = "Dbee" })

    vim.keymap.set("n", "<leader>dbt", function()
      require("dbee").toggle()
    end, { desc = "Toggle Dbee" })

    vim.keymap.set("n", "<leader>dbc", function()
      require("dbee").close()
    end, { desc = "Close Dbee" })

    vim.keymap.set("n", "<leader>dbu", function()
      require("dbee").update()
    end, { desc = "Update Dbee" })
  end,
}
