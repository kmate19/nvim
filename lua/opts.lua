local O = vim.opt

vim.diagnostic.config({ virtual_text = true, severity_sort = true })

O.winborder = "solid"
O.cursorline = true

-- clipboard unnamedplus for system clipboard
O.clipboard = "unnamedplus"

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
O.foldmethod = "manual"
O.foldlevelstart = 99

-- linewrap
O.wrap = false

O.swapfile = false
O.undofile = true

-- line numbers
O.relativenumber = true
O.nu = true

-- usable mouse in all modes
O.mouse = "a"

-- search
O.ignorecase = true
O.smartcase = true

-- no beep
O.vb = true

O.signcolumn = "yes"

-- how long to wait for keypresses after pressing a modifier key eg. <C>
O.timeoutlen = 400

-- split settings
O.splitright = true
O.splitbelow = true

-- change how chars look in list mode
O.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- prettier replace view
O.inccommand = "split"

-- i like big scrolloff
O.scrolloff = 10

-- line at 80 for code line length sanity
O.colorcolumn = "80"
