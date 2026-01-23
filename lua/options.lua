------------ Vim QoL ------------

-- Long lines wrap + indented
vim.opt.wrap = true
vim.opt.breakindent = true

-- Tab size
vim.opt.tabstop = 2

-- Indentation size
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Line numbers + relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- System clipboard == Nvim clipboard
vim.opt.clipboard = "unnamedplus"

-- Case-insensitive for searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Flash.nvim config
vim.o.timeout = true
vim.o.timeoutlen = 400

-- No change in cursor
vim.opt.guicursor = ""
