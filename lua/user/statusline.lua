vim.api.nvim_exec([[
  hi PrimaryBlock ctermfg=06 ctermbg=00
]], false)

local stl = {
  '%#PrimaryBlock#',
  '%=',
  '%{&filetype}',
}
vim.o.statusline = table.concat(stl)
