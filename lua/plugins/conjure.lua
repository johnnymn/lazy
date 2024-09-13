return {
  {
    "Olical/conjure",
    ft = { "clojure", "fennel", "python", "racket", "janet" },
    config = function()
      vim.g["conjure#log#hud"] = true
      vim.g["conjure#extract#tree_sitter#enabled"] = true
    end,
  },
}
