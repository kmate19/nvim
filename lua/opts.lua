local O = vim.opt

vim.diagnostic.config { virtual_text = true, virtual_lines = false }

-- clipboard unnamedplus for system clipboard
O.clipboard = 'unnamedplus'

---- indenting
O.shiftwidth = 4
O.tabstop = 4
O.softtabstop = 4
-- spaces instead of tabs
O.expandtab = true
O.autoindent = true
O.smartindent = true
O.breakindent = true

-- (no) folding
O.foldenable = false
O.foldmethod = 'manual'
O.foldlevelstart = 99

-- linewrap
O.wrap = false

-- swapfile/undofile
O.swapfile = false
O.undofile = true

-- line numbers
O.relativenumber = true
O.nu = true

-- usable mouse in all modes
O.mouse = 'a'

-- always show statusline
O.showmode = false

-- search
O.ignorecase = true
O.smartcase = true
O.incsearch = true

-- no beep
O.vb = true

-- signcolumn
O.signcolumn = 'yes'

-- update time for swapfile and cursorhold (not using swap)
O.updatetime = 400

-- how long to wait for keypresses after pressing a modifier key eg. <C>
O.timeoutlen = 450

-- split settings
O.splitright = true
O.splitbelow = true

-- show invisible chars
O.list = true
O.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- prettier replace view
O.inccommand = 'split'

-- dont want cursorline for now
O.cursorline = true

-- i like big scrolloff
O.scrolloff = 8

-- line at 80 for code line length sanity
O.colorcolumn = '80'
