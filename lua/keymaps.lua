-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set({ 'n', 'v' }, '<leader>p', [["_dP]], { desc = 'Paste without writing current text into register' })
vim.keymap.set({ 'n', 'v' }, '<leader>x', '"_x', { desc = "Delete character but don't copy into register" })

vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center screen when scrolling up' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center screen when scrolling down' })
vim.keymap.set('n', 'n', 'nzz', { desc = 'Center screen when going to next search result' })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'Center screen when going to previous search result' })
vim.keymap.set('n', '*', '*zz', { desc = 'Center screen when going to next search result under cursor' })
vim.keymap.set('n', '#', '#zz', { desc = 'Center screen when going to previous search result under cursor' })
vim.keymap.set('n', 'g*', 'g*zz', { desc = 'Center screen when going to next search result under cursor' })
vim.keymap.set('n', 'g#', 'g#zz', { desc = 'Center screen when going to previous search result under cursor' })
vim.keymap.set('n', 't', 'tzz', { desc = 'Center screen when going until next search result' })
vim.keymap.set('n', 'T', 'Tzz', { desc = 'Center screen when going until previous search result' })

vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { desc = 'Go to the left window' })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { desc = 'Go to the right window' })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { desc = 'Go to the down window' })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { desc = 'Go to the up window' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', { desc = 'Stay in indent mode when indenting outwards' })
vim.keymap.set('v', '>', '>gv', { desc = 'Stay in indent mode when indenting inwards' })

-- Remap ESC key in different modes
vim.keymap.set({ 'i', 'v', 'c' }, 'kj', '<ESC>', { desc = 'Escape when in insert mode' })

-- Move lines up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move visual selected line down' })
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv", { desc = 'Move visual selected line up' })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Splits
vim.keymap.set('n', '<leader>|', ':vsplit<CR>', { desc = 'Open vertical split' })
vim.keymap.set('n', '<leader>-', ':split<CR>', { desc = 'Open horizontal split' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- vim: ts=2 sts=2 sw=2 et
