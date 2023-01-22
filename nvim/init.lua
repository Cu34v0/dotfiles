local opt=vim.opt

opt.number=true
opt.relativenumber=true

require('plugins')
require'nvim-lastplace'.setup{}
require('color')
require('p-tree')
require('p-treesitter')
require('p-lualine')
require('buftabline')
