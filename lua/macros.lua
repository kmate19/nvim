local log_group = vim.api.nvim_create_augroup('logmacro', { clear = true })

local function log_macro(type)
  local word = vim.fn.expand '<cword>'

  if word == '' then
    -- No word under cursor, prompt for variable name
    word = vim.fn.input 'Variable to debug: '
    if word == '' then
      return
    end
  end

  -- Insert dbg! statement after current line
  local current_line = vim.fn.line '.'
  local indent = string.match(vim.fn.getline(current_line), '^%s*') or ''
  local log_statement = string.format('%sdbg!(&%s);', indent, word)

  vim.fn.append(current_line, log_statement)

  -- Move cursor to the newly inserted line
  vim.fn.cursor(current_line + 1, 0)
end

vim.api.nvim_create_autocmd('FileType', {
  group = log_group,
  pattern = { 'rust' },
  callback = function()
    vim.keymap.set({ 'n', 'v' }, '<leader>lm', log_macro)
  end,
})
