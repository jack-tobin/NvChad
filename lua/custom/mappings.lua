local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<F9>"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
    },
    ["<F6>"] = {
      function()
        require("dap-python").test_method()
      end,
    },
  }
}

return M
