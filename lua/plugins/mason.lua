return {
  { "williamboman/mason.nvim" },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "matlab_ls" },
      automatic_installation = true,
    },
  },
}
