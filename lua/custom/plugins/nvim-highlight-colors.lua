return {
  'brenoprata10/nvim-highlight-colors',
  config = function()
    require('nvim-highlight-colors').setup {
      render = 'background',
      -- virtual_symbol = '■',
      enable_tailwind = true,
    }
  end,
}
