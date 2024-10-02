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
}
