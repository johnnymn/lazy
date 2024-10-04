if vim.g.vscode then
  return {
    { "neovim/nvim-lspconfig", enabled = false },
    { "nvim-lualine/lualine.nvim", enabled = false },
    { "hrsh7th/nvim-cmp", enabled = false },
    { "Olical/conjure", enabled = false },
    { "nvimdev/dashboard-nvim", enabled = false },
    { "lewis6991/gitsigns.nvim", enabled = false },
    { "folke/lazy.nvim", enabled = false },
    { "folke/which-key.nvim", enabled = false },
    { "smoka7/multicursors.nvim", enabled = false },
    { "mfussenegger/nvim-dap-python", enabled = false },
    { "rcarriga/nvim-notify", enabled = false },
    { "akinsho/toggleterm.nvim", enabled = false },
    { "NeogitOrg/neogit", enabled = false },
    { "mfussenegger/nvim-dap", enabled = false },
    { "stevearc/dressing.nvim", enabled = false },
    { "folke/flash.nvim", enabled = false },
    { "wintermute-cell/gitignore.nvim", enabled = false },
    { "ellisonleao/gruvbox.nvim", enabled = false },
    { "LazyVim/LazyVim", enabled = false },
    { "tanvirtin/monokai-pro.nvim", enabled = false },
    { "rmehri01/onenord.nvim", enabled = false },
    { "folke/persistence.nvim", enabled = false },
    { "nvim-lua/plenary.nvim", enabled = false },
    { "nvim-telescope/telescope-fzf-native.nvim", enabled = false },
    { "nvim-telescope/telescope.nvim", enabled = false },
    { "linux-cultist/venv-selector.nvim", enabled = false },
  }
else
  return {
    { "garymjr/nvim-snippets", enabled = false },
  }
end
