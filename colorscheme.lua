vim.cmd.colorscheme 'nordic'
local palette = require 'nordic.colors'

local status, _ = pcall(vim.cmd, "colorscheme nordic")
if not status then
  print("Colorsheme not found!")
  return
end


