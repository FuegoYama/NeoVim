--[[
vim.cmd.colorscheme 'gruvbox'
local palette = require 'gruvbox'

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
  print("Colorscheme not found!")
  return
end
]]

vim.cmd.colorscheme 'nordic'
local palette = require 'nordic.colors'

local status, _ = pcall(vim.cmd, "colorscheme nordic")
if not status then
  print("Colorscheme not found!")
  return
end

