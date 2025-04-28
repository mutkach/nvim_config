require("options.colorscheme")
local builtin = require('telescope.builtin')

--vim.keymap.set('n', '<leader>c', NextColorScheme, { noremap = true, silent = false })
vim.keymap.set('n', '<leader>C', PrevColorScheme, { noremap = true, silent = false })


local myFind = function()
    builtin.find_files({sorting_strategy="ascending"})
end

local myBuffers = function()
    builtin.buffers({sorting_strategy="ascending"})
end

vim.keymap.set('n', '<leader>c', builtin.colorscheme)
vim.keymap.set('n', '<leader>b',  myBuffers)
vim.keymap.set('n', '<leader>f',  myFind)
vim.keymap.set('n', '<leader>d',  builtin.diagnostics)

--vim.cmd.nnoremap [[<leader>b :ls<CR>]]
--vim.cmd.nnoremap [[<leader>b :ls<CR>]]
vim.cmd.nnoremap [[<leader>y "+y<CR>]]
vim.cmd.nnoremap [[<leader>p "+p<CR>]]

vim.cmd.nnoremap [[gs ^]]
vim.cmd.nnoremap [[gh 0]]
vim.cmd.nnoremap [[gl $]]
