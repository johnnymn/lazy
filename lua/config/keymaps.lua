local map = vim.keymap.set

map({ "n", "v" }, "<Up>", "5k", { noremap = true })
map({ "n", "v" }, "<Down>", "5j", { noremap = true })
map("t", "æ", [[<C-\><C-n>]], { desc = "Enter normal mode in terminal", noremap = true, silent = true })
map(
  "n",
  "<leader>tr",
  "<cmd>lua require('toggleterm.terminal').Terminal:new():toggle()<CR>",
  { noremap = true, silent = true }
)

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
