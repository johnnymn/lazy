return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "williamboman/mason.nvim",
  },

  config = function()
    local lspconfig = require("lspconfig")
    local mason = require("mason")

    LazyVim.format.register(LazyVim.lsp.formatter())
    mason.setup()

    lspconfig.bashls.setup({})
    lspconfig.clangd.setup({})
    lspconfig.clojure_lsp.setup({})
    lspconfig.cmake.setup({})
    lspconfig.dockerls.setup({})
    lspconfig.gopls.setup({})
    lspconfig.jdtls.setup({})
    lspconfig.lua_ls.setup({})
    lspconfig.ocamllsp.setup({})
    lspconfig.ruff_lsp.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.terraformls.setup({})
    lspconfig.verible.setup({})
    lspconfig.yamlls.setup({})
  end,
}
