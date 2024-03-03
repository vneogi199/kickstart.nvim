-- [[ Setting options ]]
-- See `:help vim.opt`
--  For more options, you can see `:help option-list`
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true
vim.o.incsearch = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set highlight on search
vim.opt.hlsearch = true -- highlight all matches on previous search pattern

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true -- ignore case in search patterns
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true -- force all vertical splits to go to the right of current window

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
-- Autoscroll when less than 15 lines left
vim.opt.scrolloff = 15

vim.opt.backup = false -- creates a backup file
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.showtabline = 1 -- always show tabs
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.undofile = true -- enable persistent undo
vim.opt.cursorline = true -- highlight the current line
-- vim: ts=2 sts=2 sw=2 et
