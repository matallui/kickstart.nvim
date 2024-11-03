return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', ':Neotree toggle<CR>', desc = 'File explorer', silent = true },
  },
  opts = {
    filesystem = {
      bind_to_cwd = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          'node_modules',
          '.git',
        },
        always_show_by_pattern = {
          '.env*',
        },
        never_show = {
          '.DS_Store',
          'thumbs.db',
        },
      },
      follow_current_file = {
        enabled = true, -- This will find and focus the file in the active buffer every time
        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
      },
      window = {
        width = 30,
        mappings = {
          ['l'] = 'open',
          ['o'] = 'open',
          ['h'] = 'close_node',
          ['<leader>e'] = 'close_window',
        },
      },
    },
  },
}
