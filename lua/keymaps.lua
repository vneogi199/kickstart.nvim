-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '<leader>bn', '<cmd>enew<CR>', { desc = 'Open new buffer' })
vim.keymap.set('n', '<leader>bx', '<cmd>bdelete<CR>', { desc = 'Close current buffer' })

vim.keymap.set({ 'n', 'v' }, '<leader>p', [["_dP]], { desc = 'Paste without writing current text into register' })
vim.keymap.set({ 'n', 'v' }, '<leader>x', '"_x', { desc = "Delete character but don't copy into register" })
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete without writing current text into register' })

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
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Splits
vim.keymap.set('n', '<leader>|', ':vsplit<CR>', { desc = 'Open vertical split' })
vim.keymap.set('n', '<leader>-', ':split<CR>', { desc = 'Open horizontal split' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>cn', '<cmd>cnext<CR>zz', { desc = 'Next in quickfix list' })
vim.keymap.set('n', '<leader>cp', '<cmd>cprev<CR>zz', { desc = 'Previous in quickfix list' })
vim.keymap.set('n', '<leader>ln', '<cmd>lnext<CR>zz', { desc = 'Next in location list' })
vim.keymap.set('n', '<leader>lp', '<cmd>lprev<CR>zz', { desc = 'Previous in location list' })

vim.keymap.set('n', 'Q', '@qj')
vim.keymap.set('x', 'Q', ':norm @q<CR>')

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
