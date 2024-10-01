-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false
vim.g.tutor_is_loaded = 1
vim.opt.backspace = { "indent", "eol", "start" }

if not vim.g.vscode then
  vim.g.NERDTreeShowHidden = 1
  vim.g.neovide_scale_factor = 1.40
  vim.g.neovide_position_animation_length = 0
  -- neovide fails to lauch from spotlight
  -- if this option is set to true.
  vim.g.neovide_fullscreen = false
  vim.g.neovide_cursor_smooth_blink = false
  vim.g.neovide_cursor_vfx_mode = ""
  vim.g.neovide_scroll_animation_length = 0
  vim.g.neovide_cursor_animation_length = 0
end
