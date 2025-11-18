vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.syntax = "on"
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.diagnostic.config ({
    virtual_text = false,
    virtual_lines = false,
} )
