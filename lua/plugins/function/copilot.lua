return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      settings = {
        telemetry = {
          telemetryLevel = 'none',
        },
      },
    }
  end,
}
