-- Makes Space the leader key
vim.g.mapleader = " "

-- Quick save
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', {noremap = true})

-- Closes the current buffer even if there is only one buffer
vim.api.nvim_set_keymap('n', '<Leader>bd', ':bp <BAR> bd #<CR>', {})

-- Treats long lines as break lines (useful when moving around in them)
vim.api.nvim_set_keymap('n', 'j', 'gj', {})
vim.api.nvim_set_keymap('n', 'k', 'gk', {})

-- Insert a break point for debugging in python
vim.api.nvim_set_keymap('n', '<F32>',
                        'oimport ipdb; ipdb.set_trace()<ESC>:w<CR>', {})

-- From https://github.com/Errichto/youtube/wiki/Linux-&-Geany-Setup
-- F8 (fast)
-- F9 (safe, default)
vim.api.nvim_set_keymap('n', '<F8>',
  ':!g++ -std=c++17 -Wshadow -Wall -o main % -O2 -Wno-unused-result<CR>', {})
vim.api.nvim_set_keymap('n', '<F9>',
  ':!g++ -std=c++17 -Wshadow -Wall -o main % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG<CR>', {})
