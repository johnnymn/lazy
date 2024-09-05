return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = function(term)
        if term.direction == "horizontal" then
          return vim.o.lines - 2
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<leader>2]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 3,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "none",
        width = function()
          return vim.o.columns
        end,
        height = function()
          return vim.o.lines - 1
        end,
      },
    })

    vim.api.nvim_set_keymap("n", "<leader>2", ":ToggleTerm<CR>", { noremap = true, silent = true })
  end,
}
