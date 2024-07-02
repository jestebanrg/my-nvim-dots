local keymap = vim.keymap.set
keymap("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
keymap("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", { desc = "Toggle Menu" })
keymap({ "n", "i", "v" }, "<C-s>", "<CMD>w<CR><ESC>", { desc = "Save File" })
keymap("n", "<leader>h", "<CMD>Huez<CR>", { desc = "Toggle Huez" })
keymap("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit" })
keymap("n", "<leader>Q", ":q!<CR>", { desc = "Force Quit" })
keymap("n", "<leader>u", "<CMD>UndotreeToggle<CR>", { desc = "Toggle Undo Tree" })
keymap("n", "<leader>U", "<CMD>UndotreeFocus<CR>", { desc = "Focus Undo Tree" })

--- move line below
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })


--clone line below
keymap("v", "MJ", "mzJ`z", { desc = "Clone line down" })
keymap("v", "MK", "mzK`z", { desc = "Clone line up" })
keymap("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })

keymap("n", "<leader>gg", "<CMD>LazyGit<CR>", { desc = "LazyGit" })

-- Buffer
keymap("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete Buffer" })
keymap("n", "<leader>bn", "<CMD>bn<CR>", { desc = "Next Buffer" })
keymap("n", "<leader>bp", "<CMD>bp<CR>", { desc = "Previous Buffer" })
keymap("n", "<leader>bl", "<CMD>ls<CR>", { desc = "List Buffers" })

-- Dap
vim.api.nvim_set_keymap('n', '<F5>', ':lua require\'dap\'.continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', ':lua require\'dap\'.step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F11>', ':lua require\'dap\'.step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', ':lua require\'dap\'.step_out()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ':lua require\'dap\'.toggle_breakpoint()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>B', ':lua require\'dap\'.set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', { noremap = true, silent = true })

-- keymap("n", "<leader>b", "<CMD>DapToggleBreakpoint<CR>", { desc = "Toggle Breakpoint" })
-- keymap("n", "<leader>dc", "<CMD>DapContinue<CR>", { desc = "Continue" })
-- keymap("n", "<leader>do", "<CMD>DapStepOver<CR>", { desc = "Step Over" })
-- keymap("n", "<leader>di", "<CMD>DapStepInto<CR>", { desc = "Step Into" })
-- keymap("n", "<leader>dO", "<CMD>DapStepOut<CR>", { desc = "Step Out" })

keymap("n", "<leader>ih", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)
