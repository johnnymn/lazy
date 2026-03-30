return {
  "mason-org/mason.nvim",

  dependencies = {
    "mason-org/mason-lspconfig.nvim",
  },

  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = {
        "clangd",
        "gopls",
        "jdtls",
        "pyright",
        -- "rubocop",
        "sqlls",
        "verible",
        "ruff",
      },
    })
  end,
}
