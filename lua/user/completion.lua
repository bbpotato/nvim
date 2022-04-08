local cmp_ok, cmp = pcall(require, 'cmp')
local luasnip_ok, luasnip = pcall(require, 'luasnip')
if not cmp_ok or not luasnip_ok then return end

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<CR>"] = cmp.mapping.confirm { select = true }
  },
  formatting = {
    fields = { "abbr", "menu" },
    format = function(entry, vim_item)
      vim_item.menu = ({
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
  experimental = {
    ghost_text = true,
    native_menu = false
  },
})
