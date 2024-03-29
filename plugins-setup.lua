local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

-- lua plenary, lua functions that many plugins use
use ("nvim-lua/plenary.nvim")

-- nvim tree, file explorer
use("nvim-tree/nvim-tree.lua")

-- statusline
use("nvim-lualine/lualine.nvim")

-- telescope, a fuzzy finder
use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency
use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

--[[
-- gruvbox
use { "ellisonleao/gruvbox.nvim" }
]]

-- nordic
use 'AlexvZyl/nordic.nvim'

-- Put this at the end after all plugins!
   if packer_bootstrap then
    require('packer').sync()
  end
end)
