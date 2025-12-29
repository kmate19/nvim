return {
  'zbirenbaum/copilot.lua',
  dependencies = {
    'copilotlsp-nvim/copilot-lsp', -- (optional) for NES functionality
  },
  cmd = 'Copilot',
  enabled = false,
  event = 'InsertEnter',
  opts = {},
  config = function()
    -- vim.api.nvim_create_autocmd('User', {
    --   pattern = 'BlinkCmpMenuOpen',
    --   callback = function()
    --     vim.b.copilot_suggestion_hidden = false
    --   end,
    -- })
    --
    -- vim.api.nvim_create_autocmd('User', {
    --   pattern = 'BlinkCmpMenuClose',
    --   callback = function()
    --     vim.b.copilot_suggestion_hidden = false
    --   end,
    -- })

    require('copilot').setup {
      nes = {
        auto_trigger = true,
        enabled = true,
        keymap = {
          accept = '<leader><Tab>',
        },
      },
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<Tab>',
          accept_word = '<M-l>',
          accept_line = '<M-S-l>',
          next = '<M-]>',
          prev = '<M-[>',
          dismiss = '<C-]>',
        },
      },
    }
  end,
}
