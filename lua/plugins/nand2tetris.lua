return {
  {
    "sevko/vim-nand2tetris-syntax",
    config = function()
      vim.cmd([[autocmd BufRead,BufNewFile *.hdl set filetype=nand2tetris]])
    end,
  },
}
