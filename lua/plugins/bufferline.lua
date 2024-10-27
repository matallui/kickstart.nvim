return {
  {

    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {

          --- Please note some names can/will break the
          --- bufferline so use this at your discretion knowing that it has
          --- some limitations that will *NOT* be fixed.
          name_formatter = function(buf) -- buf contains a "name", "path" and "bufnr"
            -- remove extension from markdown files for example
            if buf.name:match '%.md' then
              return vim.fn.fnamemodify(buf.name, ':t:r')
            end
            return buf.name
          end,
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'Explorer',
              highlight = 'PanelHeading',
              padding = 1,
            },
          },
        },
      }
      vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>')
      vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>')
    end,
  },
  {
    'ojroques/nvim-bufdel',
    config = function()
      require('bufdel').setup {
        next = 'tabs',
        quit = true,
      }

      vim.keymap.set('n', '<leader>c', '<cmd>BufDel<cr>', { desc = 'Close buffer' })
    end,
    opts = {
    },
  },
}
