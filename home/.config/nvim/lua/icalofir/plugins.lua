-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
  -- Fancy color scheme
  "morhetz/gruvbox",

  -- Tip 12 from Practical VIM
  "tpope/vim-commentary",

  -- Tip 36 from Practical VIM
  "tpope/vim-unimpaired",

  -- Tip 54 from Practical VIM
  "tpope/vim-surround",

  -- Indentation guide line
  "nathanaelkane/vim-indent-guides",

  -- Nice tabline at the bottom and a theme for it
  "vim-airline/vim-airline",

  -- Nvim autocomplete
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-nvim-lsp-signature-help",
  "hrsh7th/nvim-cmp",

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",
})
