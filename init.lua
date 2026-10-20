-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Start neovide in the home directory.
if vim.g.neovide then
  vim.cmd([[autocmd VimEnter * cd ~]])
end

vim.o.background = "dark"

if vim.g.gui_vimr then
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      vim.cmd("VimRToggleFullscreen")
    end,
  })
end
