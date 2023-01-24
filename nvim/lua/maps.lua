vim.g.mapleader = ' '
local keymap = vim.keymap

-- Open NerdTree
keymap.set('n', '<C-a>', '<cmd>NvimTreeToggle<cr>')

-- Move in buftabline
keymap.set('n', '<TAB>', '<cmd>bNext<cr>')
keymap.set('n', '<leader>x', '<cmd>bdelete<cr>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
