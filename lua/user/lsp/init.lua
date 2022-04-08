local lsp_installer_ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
local cmp_nvim_lsp_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
local bind = require('user.bind').bind
if not lsp_installer_ok or not cmp_nvim_lsp_ok then return end

-- keep diagnostics minimal and only when asked for
vim.diagnostic.config({
  virtual_text = false,
  float = {
    focusable = false,
    style = 'minimal',
  }
})

-- lsp server functions
local function on_attach(client, bufnr)
  bind {'n', 'gc', '<cmd>lua vim.lsp.buf.declaration()<CR>', buffer = true}
  bind {'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', buffer = true}
  bind {'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', buffer = true}
  bind {'n', 'grn', '<cmd>lua vim.lsp.buf.rename()<CR>', buffer = true}
  bind {'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', buffer = true}
  bind {'n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', buffer = true}
  bind {'n', 'gf', '<cmd>lua vim.diagnostic.open_float()<CR>', buffer = true}
  bind {'n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', buffer = true}
  bind {'n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', buffer = true}
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

local capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- setup servers using nvim-lsp-installer
lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities
  }

  if server.name == 'sumneko_lua' then
    local lua_opts = require('user.lsp.lang_config.lua').lua_config
    opts = vim.tbl_deep_extend('force', lua_opts, opts)
  end

  server:setup(opts)
end)
