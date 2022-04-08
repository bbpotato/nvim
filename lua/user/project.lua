local project_ok, project = pcall(require, 'project_nvim')
local telescope_ok, telescope = pcall(require, 'telescope')
local bind = require('user.bind').bind
if not project_ok or not telescope_ok then return end

-- defaults good with me
project.setup()
telescope.load_extension('projects')

-- keybindings
bind {'n', '<Leader>p', ':Telescope projects<CR>'}
