local project_ok, project = pcall(require, 'project_nvim')
local telescope_ok, telescope = pcall(require, 'telescope')
local bindings_ok, bindings = pcall(require, 'user.bindings')
if not project_ok or not telescope_ok or not bindings_ok then return end

-- defaults good with me
project.setup()
telescope.load_extension('projects')

-- keybindings
bindings.bind {'n', '<Leader>p', ':Telescope projects<CR>'}
