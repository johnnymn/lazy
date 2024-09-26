if vim.g.vscode then
  return {
    { "neovim/nvim-lspconfig", enabled = false },
    { "nvim-neo-tree/neo-tree.nvim", enabled = false },
    { "mfussenegger/nvim-dap", enabled = false },
    { "akinsho/toggleterm.nvim", enabled = false },
    { "nvim-lualine/lualine.nvim", enabled = false },
    { "hrsh7th/nvim-cmp", enabled = false },
    { "Olical/conjure", enabled = false },
    { "nvimdev/dashboard-nvim", enabled = false },
    { "nvim-telescope/telescope.nvim", enabled = false },
    { "lewis6991/gitsigns.nvim", enabled = false },
    { "folke/flash.nvim", enabled = false },
    { "lukas-reineke/indent-blankline.nvim", enabled = false },
    { "folke/lazy.nvim", enabled = false },
    { "echasnovski/mini.icons", enabled = false },
    { "mfussenegger/nvim-dap-python", enabled = false },
    { "rcarriga/nvim-notify", enabled = false },
    { "nvim-treesitter/nvim-treesitter", enabled = false },
    { "nvim-treesitter/nvim-treesitter-textobjects", enabled = false },
    { "windwp/nvim-ts-autotag", enabled = false },
    { "folke/ts-comments.nvim", enabled = false },
    { "folke/which-key.nvim", enabled = false },
  }
else
  return {
    { "garymjr/nvim-snippets", enabled = false },
  }
end
