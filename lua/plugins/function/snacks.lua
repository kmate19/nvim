return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    notifier = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = true },
      },
    },
    dashboard = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    -- {
    --   '<leader>.',
    --   function()
    --     Snacks.scratch()
    --   end,
    --   desc = 'Toggle Scratch Buffer',
    -- },
    -- {
    --   '<leader>S',
    --   function()
    --     Snacks.scratch.select()
    --   end,
    --   desc = 'Select Scratch Buffer',
    -- },
    -- {
    --   '<leader>n',
    --   function()
    --     Snacks.notifier.show_history()
    --   end,
    --   desc = 'Notification History',
    -- },
    {
      '<leader>x',
      function()
        Snacks.bufdelete()
      end,
      desc = 'Delete Buffer',
    },
    {
      '<leader>gB',
      function()
        Snacks.gitbrowse()
      end,
      desc = 'Git Browse',
    },
    {
      '<leader>gf',
      function()
        Snacks.lazygit.log_file()
      end,
      desc = 'Lazygit Current File History',
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '<leader>gl',
      function()
        Snacks.lazygit.log()
      end,
      desc = 'Lazygit Log (cwd)',
    },
    -- {
    --   '<leader>un',
    --   function()
    --     Snacks.notifier.hide()
    --   end,
    --   desc = 'Dismiss All Notifications',
    -- },
    -- {
    --   '<c-/>',
    --   function()
    --     Snacks.terminal()
    --   end,
    --   desc = 'Toggle Terminal',
    -- },
    -- {
    --   '<c-_>',
    --   function()
    --     Snacks.terminal()
    --   end,
    --   desc = 'which_key_ignore',
    -- },
    {
      ']]',
      function()
        Snacks.words.jump(vim.v.count1)
      end,
      desc = 'Next Reference',
      mode = { 'n', 't' },
    },
    {
      '[[',
      function()
        Snacks.words.jump(-vim.v.count1)
      end,
      desc = 'Prev Reference',
      mode = { 'n', 't' },
    },
  },
}
