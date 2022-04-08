local packer_ok, packer = pcall(require, 'packer')
if not packer_ok then return end

-- reload plugins when this file changes
vim.cmd([[
  augroup autoload_plugins
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return packer.startup(function(use)
  -- plugin managers
  use 'wbthomason/packer.nvim'

  -- "utility" libraries
  use 'nvim-lua/plenary.nvim'

  -- themes
  use 'shaunsingh/nord.nvim'

  -- telescope
  use 'nvim-telescope/telescope.nvim'

  -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- impatient
  use 'lewis6991/impatient.nvim'

  -- project
  use 'ahmedkhalf/project.nvim'

  -- cokeline
  use 'noib3/nvim-cokeline'

  -- sneak
  use 'justinmk/vim-sneak'

  -- neogit
  use 'TimUntersberger/neogit'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- autopairs
  use "windwp/nvim-autopairs"
end)
