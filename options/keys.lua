require("options.colorscheme")
local builtin = require('telescope.builtin')
local wk = require("which-key")


vim.keymap.set('n', '<leader>c', NextColorScheme, { noremap = true, silent = false })
vim.keymap.set('n', '<leader>C', PrevColorScheme, { noremap = true, silent = false })

vim.keymap.set('n', '<leader>?', function()
    require("which-key").show({ global = false, layout='helix' })
      end, { noremap = true, silent = false })


local myFind = function()
    builtin.find_files({sorting_strategy="ascending"})
end

local myBuffers = function()
    builtin.buffers({sorting_strategy="ascending"})
end


local function symbols_no_fields()
  builtin.lsp_document_symbols({
    -- Filter out struct fields by excluding the Field symbol kind
    symbols = {
      "Class",
      "Function",
      "Method",
      "Constructor",
      "Enum",
      "Interface",
      "Module",
      "Namespace",
      "Package",
      "Property",
      "Struct",
      "Constant",
      "Variable",
      -- Note: "Field" is intentionally excluded
    }
  })
end

--vim.keymap.set('n', '<leader>c', builtin.colorscheme)
vim.keymap.set('n', '<leader>b',  myBuffers)
vim.keymap.set('n', '<leader>f',  myFind)
vim.keymap.set('n', '<leader>d',  builtin.diagnostics)
vim.keymap.set('n', '<leader>s',  symbols_no_fields)

vim.keymap.set('v', '<leader>y', '\"+y', { noremap = true, silent = true, desc = 'Copy selection to system clipboard' })
vim.keymap.set('n', '<leader>p', '\"+p', { noremap = true, silent = true, desc = 'Paste from system clipboard' })


-- vim.cmd.nnoremap [[gs ^]]
-- vim.cmd.nnoremap [[gh 0]]
-- vim.cmd.nnoremap [[gl $]]



-- Better mnemonics:
vim.keymap.set('n', 'gl', '$', { noremap = true, desc = "Go to end of line" })
vim.keymap.set('o', 'gl', '$', { noremap = true, desc = "Go to end of line" })
vim.keymap.set('v', 'gl', '$', { noremap = true, desc = "Go to end of line" })
vim.keymap.set('n', 'gs', '^', { noremap = true, desc = "Go to end of line" })
vim.keymap.set('o', 'gs', '^', { noremap = true, desc = "Go to end of line" })
vim.keymap.set('v', 'gs', '^', { noremap = true, desc = "Go to end of line" })
vim.keymap.set('n', 'gh', '^', { noremap = true, desc = "Go to end of line" })
vim.keymap.set('o', 'gh', '^', { noremap = true, desc = "Go to end of line" })
vim.keymap.set('v', 'gh', '^', { noremap = true, desc = "Go to end of line" })
