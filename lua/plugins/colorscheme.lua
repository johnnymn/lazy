return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  config = function()
    require("gruvbox").setup({
      contrast = "soft",
    })
  end,
}
