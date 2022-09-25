-- Enable gruvbox colorscheme
vim.opt.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Set the unnamed register to the + register
vim.opt.clipboard = 'unnamedplus'

-- Show line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Settings to show invisibles characters like atom
vim.opt.list = true
vim.opt.listchars = {eol = '¬', trail = '·', tab = '»·'}

-- Adds a 80-column indicator
vim.opt.colorcolumn = '81'
vim.api.nvim_set_hl(0, 'ColorColumn', {ctermbg = 7})

-- Use mouse support
vim.opt.mouse = 'a'

-- Turn on wild menu
vim.opt.wildmenu = true
vim.opt.wildmode = 'longest,full'

-- Highlight search results
vim.opt.hlsearch = true

-- Make search starts as you type
vim.opt.incsearch = true

-- Highlight current line
vim.opt.cursorline = true

-- Block cursor
vim.opt.guicursor = {i = 'block-cursor', n = 'block-cursor',
                     v = 'block-cursor', c = 'block-cursor'}

-- Highlight on yank
vim.cmd[[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=150, on_visual=true})
  augroup END
]]
