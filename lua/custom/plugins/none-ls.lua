return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    null_ls.setup {
      debug = false,
      sources = {
        formatting.stylua,
        formatting.prettier,
        formatting.goimports,
        formatting.black,
        formatting.goimports,
        -- diagnostics.eslint,
        -- diagnostics.flake8,

        null_ls.builtins.completion.spell,
      },
    }
  end,
}
