local neogit_ok, neogit = pcall(require, 'neogit')
local bindings_ok, bindings = pcall(require, 'user.bindings')
if not neogit_ok then return end

-- configuration
neogit.setup({
  disable_hint = true,
  disable_commit_confirmation = true,
})

-- keybindings
bindings.bind {'n', '<Leader>g', ':Neogit<CR>'}
