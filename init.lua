--[
-- impatient improves module load time by caching bytecode compiled lua modules
--
-- from impatient docs:
--   "impatient needs to be setup before any other lua plugin is loaded"
--
-- doing it in a pcall in case impatient hasn't been installed yet (e.g. first run with this config)
--]
pcall(require, 'impatient')

--[
-- (n)vim built-in configuration
--]

vim.g.mapleader = ' '

-- built-in keybinds; binds for external plugins are configured in their respective files
local bind = require('user.bind').bind

-- insert mode
bind {'i', '<C-l>', '<ESC>'}

-- normal mode

--- line navigation
bind {'n', '<C-a>', '^'}
bind {'n', '<C-e>', '$'}
bind {'n', '<C-k>', 'dd'}
bind {'n', '<C-l>', 'zz'}
bind {'n', '<C-w>', 'yy'}

--- window navigation
bind {'n', '<Leader>q', '<C-w>q'}
bind {'n', '<Leader>1', ':only<CR>'}
bind {'n', '<Leader>j', '<C-w>s'}
bind {'n', '<Leader>l', '<C-w>v'}
bind {'n', '<Leader>o', '<C-w>w'}
bind {'n', 'H', '<C-w>h'}
bind {'n', 'J', '<C-w>j'}
bind {'n', 'K', '<C-w>k'}
bind {'n', 'L', '<C-w>l'}

--- buffer navigation
bind {'n', '<Leader>k', ':bd<CR>'}
bind {'n', '<C-n>', ':bnext<CR>'}
bind {'n', '<C-p>', ':bprevious<CR>'}
bind {'n', '<Leader>D', ':call delete(expand("%")) | bdelete!'}

--- system
bind {'n', '<Leader>e', ':edit '}
bind {'n', '<Leader>c', ':qa<CR>'}
bind {'n', '<Leader>w', ':write<CR>'}
bind {'n', '<C-h>', ':set hls!<CR>'}
bind {'n', '<Leader>a', 'ggyG'}
bind {'n', '<Leader>d', ':Lexplore<CR>'}
bind {'n', '<C-s>', '/'}

vim.opt.backup = false
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.wrap = false

-- load external plugins and configuration
require 'user.plugins'

require 'user.autopairs'
require 'user.cokeline'
require 'user.completion'
require 'user.lsp'
require 'user.neogit'
require 'user.project'
require 'user.sneak'
require 'user.statusline'
require 'user.telescope'
require 'user.theme'
require 'user.treesitter'
