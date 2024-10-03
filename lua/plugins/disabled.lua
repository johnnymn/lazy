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
  }
else
  return {
    { "garymjr/nvim-snippets", enabled = false },
  }
end
