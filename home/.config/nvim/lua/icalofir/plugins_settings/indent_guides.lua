-- Settings

-- Disable auto colors
vim.g.indent_guides_auto_colors = 0

-- Size of indents
vim.g.indent_guides_guide_size = 1

-- Enable indent guides on vim startup
vim.g.indent_guides_enable_on_vim_startup = 1

-- Set colors
vim.api.nvim_set_hl(0, 'IndentGuidesOdd', {ctermbg = 7})
vim.api.nvim_set_hl(0, 'IndentGuidesEven', {ctermbg = 7})
