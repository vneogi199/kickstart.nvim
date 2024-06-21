return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
    -- 'ibhagwan/fzf-lua', -- optional
  },
  config = function()
    local neogit = require 'neogit'

    neogit.setup {
      -- Disable line numbers and relative line numbers
      disable_line_numbers = false,
    }
    vim.keymap.set('n', '<leader>gn', ':Neogit kind=split<CR>', { desc = 'Open Neogit' })
  end,
}
