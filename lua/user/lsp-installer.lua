local lsp_installer_ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
if not lsp_installer_ok then return end

local lua_config = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
}

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require('user.lsp').on_attach,
    capabilities = require('user.lsp').capabilities,
  }

  if server.name == 'sumneko_lua' then
    opts = vim.tbl_deep_extend('force', lua_config, opts)
  end

  server:setup(opts)
end)
