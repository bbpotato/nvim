local cokeline_ok, cokeline = pcall(require, 'cokeline')
local cokeline_utils_ok, cokeline_utils = pcall(require, 'cokeline/utils')
if not cokeline_ok or not cokeline_utils_ok then return end

cokeline.setup{
  default_hl = {
    fg = function(buffer) return buffer.is_focused and cokeline_utils.get_hex('Normal', 'bg') or cokeline_utils.get_hex('Comment', 'fg') end,
    bg = function(buffer) return buffer.is_focused and '#5E81AC' or 'None' end,
  },

  components = {
    {
      text = function(buffer) return buffer.is_modified and ' [+]' or ' ' end,
      style = 'bold',
    },
    {
      text = function(buffer) return buffer.filename .. ' ' end,
      style = function(buffer) return buffer.is_focused and 'bold' or nil end,
    },
  },
}
