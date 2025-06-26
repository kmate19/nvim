return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  -- experiment with this more later, for now disabled
  enabled = false,
  version = false,
  opts = {
    provider = 'copilot',
    copilot = {
      model = 'gemini-2.5-pro',
      temperature = 0,
      max_tokens = 8192,
    },
    -- copilot bugged for this for now
    -- auto_suggestions_provider = 'copilot',
    -- behavior = {
    --   auto_suggestions = true,
    -- },
  },
  build = 'make',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'echasnovski/mini.pick',
    'nvim-telescope/telescope.nvim',
    'ibhagwan/fzf-lua',
    'nvim-tree/nvim-web-devicons',
    'zbirenbaum/copilot.lua',
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
