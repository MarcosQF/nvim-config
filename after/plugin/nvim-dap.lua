require ('mason-nvim-dap').setup({
    ensure_installed = {'python'},
    handlers = {},
})

require('dap-view').setup({
    winbar = {
        sections = {"watches", "scopes", "exceptions", "breakpoints", "threads", "repl", "console"},
    },
    auto_toggle = true,
    windows = {
        size = 0.35,
        position = "below",
    },
})

-- Icons for debug
vim.fn.sign_define('DapBreakpoint', {text='●', texthl='DapBreakpoint', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointCondition', {text='●', texthl='DapBreakpointCondition', linehl='', numhl=''})
vim.fn.sign_define('DapLogPoint', {text='◆', texthl='DapLogPoint', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='▶', texthl='DapStopped', linehl='DapStoppedLine', numhl='DapStoppedLine'})

-- Dap keymaps
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
vim.keymap.set('n', '<leader>ds', function() require('dap').continue() end, { desc = "Continue" })
vim.keymap.set('n', '<leader>de', function() require('dap').terminate() end, { desc = "Terminate" })
vim.keymap.set('n', '<leader>do', function() require('dap').step_over() end, { desc = "Step Over" })
vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end, { desc = "Step Into" })

-- move trought dap-view sections
vim.api.nvim_create_autocmd("FileType", {
  pattern = "dap-view",
  callback = function()
    vim.keymap.set('n', 'L', '<cmd>DapViewNavigate 1<cr>', { buffer = true, desc = "Next section" })

    vim.keymap.set('n', 'H', '<cmd>DapViewNavigate -1<cr>', { buffer = true, desc = "Previous section" })
  end,
})

local dap = require('dap')
dap.configurations.python = {


  {
    type = 'python',
    request = 'launch',
    name = 'Launch File (Standard)',
    program = '${file}',
    console = 'integratedTerminal',
  },

  {
    type = 'python',
    request = 'launch',
    name = 'FastAPI: Local',
    module = 'uvicorn',
    args = {'main:app', '--port', '8000'},
    console = 'integratedTerminal',
  },

  {
    type = 'python',
    request = 'attach',
    name = 'FastAPI: Docker Attach',
    connect = { host = '127.0.0.1', port = 5678 },
    pathMappings = {
      { localRoot = vim.fn.getcwd(), remoteRoot = '/app' },
    },
  },
}
