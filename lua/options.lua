-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true
vim.o.incsearch = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.splitright = true -- force all vertical splits to go to the right of current window

-- Set highlight on search
-- vim.o.hlsearch = false
vim.opt.hlsearch = true -- highlight all matches on previous search pattern

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

-- Autoscroll when less than 15 lines left
vim.o.scrolloff = 15

-- Enable mouse mode
vim.o.mouse = 'a' -- allow the mouse to be used in neovim

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true -- ignore case in search patterns
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

vim.opt.backup = false    -- creates a backup file
vim.opt.cmdheight = 1     -- more space in the neovim command line for displaying messages
vim.opt.conceallevel = 0  -- so that `` is visible in markdown files
vim.opt.showtabline = 1   -- always show tabs
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.undofile = true   -- enable persistent undo
vim.opt.cursorline = true -- highlight the current line
-- vim: ts=2 sts=2 sw=2 et
