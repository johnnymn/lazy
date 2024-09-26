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
    lspconfig.elixirls.setup({})
    lspconfig.helm_ls.setup({})
    lspconfig.ltex.setup({})
    lspconfig.gopls.setup({})
    lspconfig.jdtls.setup({
      handlers = {
        ["language/status"] = function(_, _) end,
        ["$/progress"] = function(_, _, _) end,
      },
    })
    lspconfig.lua_ls.setup({})
    lspconfig.ocamllsp.setup({})
    lspconfig.ruff_lsp.setup({})
    lspconfig.pyright.setup({})
    lspconfig.racket_langserver.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.sourcekit.setup({ filetypes = { "swift", "objective-c", "objective-cpp" } })
    lspconfig.sqlls.setup({})
    lspconfig.terraformls.setup({})
    lspconfig.verible.setup({
      cmd = {
        "verible-verilog-ls",
        "--rules=-module-filename",
      },
    })

    local keymap = vim.keymap

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        opts.desc = "Show LSP references"
        keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

        opts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

        opts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

        opts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts)

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
      end,
    })
  end,
}
