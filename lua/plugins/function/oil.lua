return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {},
    dependencies = {
      { 'echasnovski/mini.icons', opts = {} },
    },
    config = function()
      -- local util = require 'oil.util'
      -- local oil = require 'oil'

      -- -- auto show previews . https://github.com/stevearc/oil.nvim/issues/357
      -- vim.api.nvim_create_autocmd('User', {
      --   pattern = 'OilEnter',
      --   callback = vim.schedule_wrap(function(args)
      --     if vim.api.nvim_get_current_buf() == args.data.buf and oil.get_cursor_entry() then
      --       local winid = util.get_preview_win()
      --       if winid then
      --         vim.api.nvim_win_close(winid, true)
      --         return
      --       end
      --       oil.open_preview()
      --     end
      --   end),
      -- })

      require('oil').setup {
        default_file_explorer = true,
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        view_options = {
          show_hidden = true,
          natural_order = true,
          is_always_hidden = function(name, _)
            return name == '..' or name == '.git'
          end,
        },
        columns = {
          'icon',
        },
        win_options = {
          wrap = true,
        },
      }
      -- open oil
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory with Oil.' })
    end,
  },
}
