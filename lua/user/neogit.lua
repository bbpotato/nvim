local neogit_ok, neogit = pcall(require, 'neogit')
local bind = require('user.bind').bind
if not neogit_ok then return end

-- configuration
neogit.setup({
  disable_hint = true,
  disable_commit_confirmation = true,
})

-- keybindings
bind {'n', '<Leader>g', ':Neogit<CR>'}
