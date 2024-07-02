-- local dap = require("dap")
-- dap.adapters["pwa-node"] = {
-- 	type = "server",
-- 	host = "127.0.0.1",
-- 	port = 8123,
-- 	executable = {
-- 		command = "js-debug-adapter",
-- 	},
-- }
--
-- for _, language in ipairs({ "typescript", "javascript" }) do
-- 	dap.configurations[language] = {
-- 		{
-- 			type = "pwa-node",
-- 			request = "launch",
-- 			name = "Launch file",
-- 			program = "${file}",
-- 			cwd = "${workspaceFolder}",
-- 			runtimeExecutable = "node",
-- 		},
-- 	}
-- end
--
-- Dap Config for asp.net project
--
local dap = require('dap')

-- Configuración de DAP para .NET
dap.adapters.coreclr = {
  type = 'executable',
  command = '/home/jesteban/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = 'coreclr',
    name = 'Launch - netcoredbg',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')
    end,
  },
}

