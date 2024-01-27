return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      columns = {
        'icon',
        'size',
        'mtime',
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
    }
    vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })

    local group_cdpwd = vim.api.nvim_create_augroup('group_cdpwd', { clear = true })
    vim.api.nvim_create_autocmd('VimEnter', {
      group = group_cdpwd,
      pattern = '*',
      callback = function()
        -- vim.api.nvim_set_current_dir(vim.fn.expand("%:p:h"))
        local cwd = require('oil').get_current_dir()
        if cwd then
          vim.api.nvim_set_current_dir(cwd)
        end
      end,
    })
  end,
}
