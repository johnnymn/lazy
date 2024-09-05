return {
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = true,
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = false, -- Disable Tree-sitter highlighting
        },
      })
    end,
  },
}
