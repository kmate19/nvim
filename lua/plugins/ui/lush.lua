--- @return string
--- @param is_macunix boolean
local function get_base_dir(is_macunix)
  if is_macunix then
    return '~/.config/nvim/lua/plugins/self/sakura'
  else
    return os.getenv 'LOCALAPPDATA' .. '/nvim/lua/plugins/self/sakura'
  end
end

local base_dir = get_base_dir(vim.fn.has 'macunix' == 1)

return {
  'rktjmp/lush.nvim',
  { dir = base_dir, lazy = true },
}
