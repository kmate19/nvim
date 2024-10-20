local O = vim.opt

-- if vim.fn.has 'wsl' then
--   vim.cmd [[
--   let g:clipboard = {
--                   \   'name': 'WslClipboard',
--                   \   'copy': {
--                   \      '+': 'clip.exe',
--                   \      '*': 'clip.exe',
--                   \    },
--                   \   'paste': {
--                   \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--                   \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--                   \   },
--                   \   'cache_enabled': 0,
--                   \ }
-- ]]
-- else
--   O.clipboard = 'unnamedplus'
-- end
O.clipboard = 'unnamedplus'

O.shiftwidth = 2
O.tabstop = 2
O.softtabstop = 2
O.expandtab = true
O.autoindent = true
O.smartindent = true

O.wrap = false

O.swapfile = false
O.backup = false

O.background = 'dark'

O.relativenumber = true
O.nu = true

O.mouse = 'a'

O.showmode = true

O.breakindent = true
O.undofile = true

O.ignorecase = true
O.smartcase = true
O.incsearch = true

O.signcolumn = 'yes'

O.updatetime = 50

O.timeoutlen = 300

O.splitbelow = true
O.splitright = true

O.list = true
O.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

O.inccommand = 'split'

-- O.cursorline = true

O.scrolloff = 10

O.colorcolumn = '80'
