return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {},
    enabled = vim.fn.has 'macunix',
    dependencies = {
      { 'echasnovski/mini.icons', opts = {} },
    },
    config = function()
      require('oil').setup {
        default_file_explorer = true,
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        view_options = {
          show_hidden = true,
          natural_order = false,
          is_always_hidden = function(name, _)
            return name == '..' or name == '.git'
          end,
        },
        -- float the oil window to the right side of the buffer, so i can still see the file im editing
        float = {
          max_width = 0.5,
          override = function(conf)
            local config = {
              row = 0,
              col = vim.o.columns * 0.5,
            }
            return vim.tbl_deep_extend('force', conf, config)
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
      vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory with Oil.' })
    end,
  },
}
