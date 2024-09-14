-- local function lsp_name(msg)
--   msg = msg or 'Inactive'
--   local buf_clients = vim.lsp.get_active_clients()
--   if next(buf_clients) == nil then
--     if type(msg) == 'boolean' or #msg == 0 then
--       return 'Inactive'
--     end
--     return msg
--   end
--   local buf_client_names = {}
--
--   for _, client in pairs(buf_clients) do
--     if client.name ~= 'null-ls' then
--       table.insert(buf_client_names, client.name)
--     end
--   end
--
--   return table.concat(buf_client_names, ', ')
-- end
--
-- return {
--   -- Set lualine as statusline
--   'nvim-lualine/lualine.nvim',
--   -- See `:help lualine.txt`
--   dependencies = {
--     'nvim-tree/nvim-web-devicons',
--   },
--   opts = {
--     options = {
--       icons_enabled = true,
--       theme = 'auto',
--       -- component_separators = '|',
--       -- section_separators = '',
--     },
--     sections = {
--       lualine_c = {
--         {
--           'filename',
--           path = 1,
--         },
--       },
--       lualine_y = {
--         {
--           lsp_name,
--           icon = '',
--         },
--       },
--     },
--   },
-- }

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'meuter/lualine-so-fancy.nvim',
  },
  opts = {
    options = {
      theme = 'auto',
      component_separators = { left = '│', right = '│' },
      section_separators = { left = '', right = '' },
      globalstatus = true,
      refresh = {
        statusline = 100,
      },
    },
    sections = {
      lualine_a = {
        { 'fancy_mode', width = 1 },
      },
      lualine_b = {
        { 'fancy_branch' },
        { 'fancy_diff' },
      },
      lualine_c = {
        { 'fancy_cwd', substitute_home = true },
      },
      lualine_x = {
        { 'fancy_macro' },
        { 'fancy_diagnostics' },
        { 'fancy_searchcount' },
        { 'fancy_location' },
      },
      lualine_y = {
        { 'fancy_filetype', ts_icon = '' },
      },
      lualine_z = {
        { 'fancy_lsp_servers' },
      },
    },
  },
}
