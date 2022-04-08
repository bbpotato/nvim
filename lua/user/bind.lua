local M = {}

M.bind = function(keydef)
  local opts = {noremap = true}
  for i, v in pairs(keydef) do
    -- singleton values in the table have implicit int keys
    if type(i) == 'string' then opts[i] = v end
  end

  local buffer = opts.buffer
  opts.buffer = nil
  if buffer then
    -- '0' will apply to the current buffer
    vim.api.nvim_buf_set_keymap(0, keydef[1], keydef[2], keydef[3], opts)
  else
    vim.api.nvim_set_keymap(keydef[1], keydef[2], keydef[3], opts)
  end
end

return M
