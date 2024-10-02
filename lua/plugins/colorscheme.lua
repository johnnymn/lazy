return {
  {
    "rmehri01/onenord.nvim",
    config = function()
      require("onenord").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onenord",
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim" },
  { "loctvl842/monokai-pro.nvim" },
}
