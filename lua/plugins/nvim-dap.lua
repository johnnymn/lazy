return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      dap.set_log_level("TRACE")
      dap.defaults.fallback.terminal_win_cmd = ""
    end,
  },

  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      local dap_python = require("dap-python")
      dap_python.setup("python")
      dap_python.test_runner = "pytest"
    end,
  },
}
