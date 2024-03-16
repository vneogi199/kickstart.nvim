return {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  config = function()
    -- vim.cmd.colorscheme 'catppuccin-frappe'
    vim.cmd.colorscheme 'catppuccin'
  end,
  priority = 1000,
}
