local M = {}

-- Module
local bind = function(keydef)
  -- don't retype noremap
  local opts = {noremap = true}
  for i, v in pairs(keydef) do
    if type(i) == 'string' then opts[i] = v end
  end
  vim.api.nvim_set_keymap(keydef[1], keydef[2], keydef[3], opts)
end
M.bind = bind

-- leader
vim.g.mapleader = ' '

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
bind {'n', '<Leader>0', '<C-w>q'}
bind {'n', '<Leader>1', ':only<CR>'}
bind {'n', '<Leader>2', '<C-w>s'}
bind {'n', '<Leader>3', '<C-w>v'}
bind {'n', '<Leader>o', '<C-w>w'}
bind {'n', 'H', '<C-w>h'}
bind {'n', 'J', '<C-w>j'}
bind {'n', 'K', '<C-w>k'}
bind {'n', 'L', '<C-w>l'}

--- buffer navigation
bind {'n', '<Leader>k', ':bd<CR>'}
bind {'n', '<C-n>', ':bnext<CR>'}
bind {'n', '<C-p>', ':bprevious<CR>'}

--- system
bind {'n', '<Leader>e', ':edit '}
bind {'n', '<Leader>c', ':qa<CR>'}
bind {'n', '<Leader>w', ':write<CR>'}
bind {'n', '<Leader>q', ':q<CR>'}
bind {'n', '<C-h>', ':set hls!<CR>'}
bind {'n', '<C-x>h', 'ggyG'}

return M
