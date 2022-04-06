local telescope_ok, telescope = pcall(require, 'telescope')
local bindings_ok, bindings = pcall(require, 'user.bindings')
if not telescope_ok or not bindings_ok then return end

-- keybindings
bindings.bind {'n', '<Leader>s', ':Telescope buffers<CR>'}
bindings.bind {'n', '<Leader>f', ':Telescope find_files<CR>'}
