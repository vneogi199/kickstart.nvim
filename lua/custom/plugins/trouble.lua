return {
  {
    'folke/trouble.nvim',
    config = function()
      vim.keymap.set('n', '<leader>tr', function()
        require('trouble').toggle()
      end, { desc = 'Toggle Trouble' })

      vim.keymap.set('n', '[t', function()
        require('trouble').next { skip_groups = true, jump = true }
      end, { desc = 'Trouble Next' })

      vim.keymap.set('n', ']t', function()
        require('trouble').previous { skip_groups = true, jump = true }
      end, { desc = 'Trouble Previous' })
    end,
  },
}
