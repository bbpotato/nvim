local telescope_ok, telescope = pcall(require, 'telescope')
local bind = require('user.bind').bind
if not telescope_ok then return end

-- keybindings
bind {'n', '<Leader>s', ':Telescope buffers<CR>'}
bind {'n', '<Leader>f', ':Telescope find_files<CR>'}
