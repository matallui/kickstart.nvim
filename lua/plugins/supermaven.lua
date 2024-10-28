return {

  'supermaven-inc/supermaven-nvim',
  event = 'InsertEnter',
  opts = {
    startup_messages = false,
    keymaps = {
      accept_suggestion = '<C-f>',
    },
  },
}
