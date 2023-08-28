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

return require('packer').startup(function(use)
  local cmd = vim.cmd
  use 'wbthomason/packer.nvim'
  -- seccion para plugins

  -- Temas
  use "drewtempelmeyer/palenight.vim"

  -- sidebar navegacion
  use {
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "nvim-treesitter/nvim-treesitter"
  }



  cmd[[set background=dark]]  
  cmd[[colorscheme palenight]]


  -- final seccion para plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
