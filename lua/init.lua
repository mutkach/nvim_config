require('remap')
require('plugins')


-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.wo.number = true
-- relative file numbers
vim.wo.relativenumber = true
vim.wo.nu = true
vim.wo.rnu = true

vim.o.shortmess = vim.o.shortmess .. 'c'
-- scrolling "bounding"
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- some language servers dont like backup files
vim.o.backup = false
vim.o.writebackup = false

-- put numbers and signs in the same column
vim.wo.signcolumn = 'number'

-- split a new buffer to the right
vim.o.splitright = true
-- split new buffer to the bottom
vim.o.splitbelow = true
-- briefly jump to matching seperator
vim.o.showmatch = true
-- case insensitive search
vim.o.ignorecase = true
-- highlight searches
vim.o.hlsearch = true

vim.o.wrap = false

-->> buffer options <<--
vim.o.tabstop = 4
-- implicit tab size
vim.o.softtabstop = 4
-- another kind of stabstop
vim.o.shiftwidth = 4
-- convert tabs to spaces
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.wo.fillchars='eob: '

vim.opt.termguicolors = true
vim.cmd [[colorscheme Atelier_SulphurpoolDark]]
--vim.cmd [[colorscheme oxocarbon]]
vim.api.nvim_set_hl(0, "Normal", { bg = "black" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#5e6687" , bg="#202746"})
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "black" })

-- require("transparent").setup({
--   groups = { -- table: default groups
--     'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
--     'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
--     'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
--     'SignColumn', 'CursorLineNr', 'EndOfBuffer',
--   },
--   extra_groups = {}, -- table: additional groups that should be cleared
--   exclude_groups = {}, -- table: groups you don't want to clear
-- })
