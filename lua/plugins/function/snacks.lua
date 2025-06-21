return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  -- TODO: check out the picker to replace telescope
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    rename = { enabled = true },
    notifier = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = true },
      },
    },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    indent = { enabled = true, animate = { enabled = false } },
  },
  init = function()
    vim.api.nvim_create_autocmd('User', {
      pattern = 'OilActionsPost',
      callback = function(event)
        if event.data.actions.type == 'move' then
          Snacks.rename.on_rename_file(event.data.actions.src_url, event.data.actions.dest_url)
        end
      end,
    })
  end,
  keys = {
    {
      '<leader>nh',
      function()
        Snacks.notifier.show_history()
      end,
      desc = 'Show hist',
    },
    -- {
    --   '<leader>S',
    --   function()
    --     Snacks.scratch.select()
    --   end,
    --   desc = 'Select Scratch Buffer',
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
  },
}
