return {
  {
    'tpope/vim-dadbod',
  },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = { 'tpope/vim-dadbod' },
    cmd = { 'DBUI', 'DBUIToggle', 'DBUIAddConnection' },
    keys = {
      { '<leader>db', '<cmd>DBUIToggle<CR>', desc = 'Toggle DB UI' },
    },
  },
}
