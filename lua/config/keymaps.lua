-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<Up>", "5k", { remap = true })
map("n", "<Down>", "5j", { remap = true })
map("n", "<leader>1", ":Neotree toggle<CR>", { noremap = true, silent = true })
map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { noremap = true, silent = true })
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
map("n", "<leader>dt", "<cmd>lua require'dap-python'.test_method()<CR>", { noremap = true, silent = true })
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<CR>", { noremap = true, silent = true })
map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
map("n", "<leader>dso", "<cmd>lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
map("n", "<leader>dq", "<cmd>lua require'dap'.terminate()<CR>", { noremap = true, silent = true })
map("n", "<leader>dh", "<cmd>lua require('dap.ui.widgets').hover()<CR>", { noremap = true, silent = true })
