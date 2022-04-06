-- impatient needs to run first to make things fast
require 'user.impatient'

-- (n)vim built-in configuration
require 'user.options'
require 'user.bindings'

-- load external plugins
require 'user.plugins'

-- configure external plugins
require 'user.cokeline'
require 'user.completion'
require 'user.neogit'
require 'user.project'
require 'user.sneak'
require 'user.statusline'
require 'user.telescope'
require 'user.theme'
require 'user.lsp'
require 'user.lsp-installer'
require 'user.treesitter'
