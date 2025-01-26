-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Start neovide in the home directory.
if vim.g.neovide then
  vim.cmd([[autocmd VimEnter * cd ~]])
end

vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")
