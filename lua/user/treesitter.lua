local configs = require 'nvim-treesitter.configs'
configs.setup {
  ensure_installed = {'lua', 'html'},
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
  },
}
