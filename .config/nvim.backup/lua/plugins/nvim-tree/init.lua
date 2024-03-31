local icons = require('theme.icons')
local augroup_name = 'CosmicNvimNvimTree'
local group = vim.api.nvim_create_augroup(augroup_name, { clear = true })

-- Autoclose nvim is nvim-tree is only buffer open
vim.api.nvim_create_autocmd('BufEnter', {
  command = [[if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]],
  group = group,
  nested = true,
})

require('nvim-tree').setup({
  respect_buf_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = icons.hint,
      info = icons.info,
      warning = icons.warn,
      error = icons.error,
    },
  },
  ignore_ft_on_setup = {
    'startify',
    'dashboard',
    'alpha',
  },
  update_focused_file = {
    enable = true,
  },
  view = {
    width = 35,
    number = true,
    relativenumber = true,
  },
  git = {
    ignore = true,
  },
  renderer = {
    highlight_git = true,
    special_files = {},
    icons = {
      glyphs = {
        default = '',
        symlink = icons.symlink,
        git = icons.git,
        folder = icons.folder,
      },
    },
  },
})
