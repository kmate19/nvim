return {
  -- TODO: look into this more later
  {
    'mfussenegger/nvim-dap',
    lazy = false,
    enabled = false,
    config = function()
      local dap = require 'dap'
      dap.set_log_level 'DEBUG'

      vim.keymap.set('n', '<F8>', dap.continue, { desc = 'Debug: Continue' })
      vim.keymap.set('n', '<F10>', dap.step_over, { desc = 'Debug: Step Over' })
      vim.keymap.set('n', '<F11>', dap.step_into, { desc = 'Debug: Step Into' })
      vim.keymap.set('n', '<F12>', dap.step_out, { desc = 'Debug: Step Out' })
      vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
      vim.keymap.set('n', '<leader>dB', function()
        dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
      end, { desc = 'Debug: Set Conditional Breakpoint' })
    end,
  },

  {
    'rcarriga/nvim-dap-ui',
    enabled = false,
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    config = function()
      local dapui = require 'dapui'
      dapui.setup()

      vim.keymap.set('n', '<leader>di', dapui.toggle, { desc = 'Debug: toggle dapui' })
    end,
  },
  {
    'jay-babu/mason-nvim-dap.nvim',
    enabled = false,
    dependencies = {
      'mason-org/mason.nvim',
      'mfussenegger/nvim-dap',
      'neovim/nvim-lspconfig',
    },
    config = function()
      require('mason-nvim-dap').setup {
        ensure_installed = {
          -- set this up again later
          -- 'coreclr',
          -- 'js',
        },
        automatic_installation = true,
        handlers = {
          function(config)
            require('mason-nvim-dap').default_setup(config)
          end,
        },
      }
    end,
  },
}
