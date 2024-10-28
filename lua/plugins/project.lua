return {
  'ahmedkhalf/project.nvim',
  config = function()
    require('project_nvim').setup {}
    vim.keymap.set('n', '<leader>sp', '<cmd>Telescope projects<CR>', { desc = 'Search Project' })
  end,
}
