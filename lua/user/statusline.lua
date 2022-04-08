-- this 'statusline' disables the statusline
vim.api.nvim_exec([[
  hi PrimaryBlock ctermfg=06 ctermbg=00
]], false)

vim.o.statusline = table.concat({'%#PrimaryBlock#'})
