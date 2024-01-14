return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fancy color scheme
  use 'morhetz/gruvbox'

  -- Tip 12 from Practical VIM
  use 'tpope/vim-commentary'

  -- Tip 36 from Practical VIM
  use 'tpope/vim-unimpaired'

  -- Tip 54 from Practical VIM
  use 'tpope/vim-surround'

  -- Indentation guide line
  use 'nathanaelkane/vim-indent-guides'

  -- Nice tabline at the bottom and a theme for it
  use 'vim-airline/vim-airline'

  -- Nvim autocomplete
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter' }
end)
