local map = vim.keymap.set

map("t", "æ", [[<C-\><C-n>]], { desc = "Enter normal mode in terminal", noremap = true, silent = true })
map(
  "n",
  "<leader>tr",
  "<cmd>lua require('toggleterm.terminal').Terminal:new():toggle()<CR>",
  { noremap = true, silent = true }
)

-- Remove lazygit mappings
vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")
vim.keymap.del("n", "<leader>gl")
vim.keymap.del("n", "<leader>gL")
vim.keymap.del("n", "<leader>gf")

if not vim.g.vscode then
  map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { noremap = true, silent = true })
  map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
  map("n", "<leader>dt", "<cmd>lua require'dap-python'.test_method()<CR>", { noremap = true, silent = true })
  map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<CR>", { noremap = true, silent = true })
  map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
  map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
  map("n", "<leader>dso", "<cmd>lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
  map("n", "<leader>dq", "<cmd>lua require'dap'.terminate()<CR>", { noremap = true, silent = true })
  map("n", "<leader>dh", "<cmd>lua require('dap.ui.widgets').hover()<CR>", { noremap = true, silent = true })
  map("n", "<leader>gn", ":Neogit<CR>", { noremap = true, silent = true })
  map("n", "<leader>gb", ":GitBlameToggle<CR>", { desc = "Toggle Git Blame" })
end

vim.keymap.set("n", "<A-h>", "5h", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", "5j", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "5k", { noremap = true, silent = true })
vim.keymap.set("n", "<A-l>", "5l", { noremap = true, silent = true })
