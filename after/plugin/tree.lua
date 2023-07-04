require("nvim-tree").setup()

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
    vim.keymap.set('n', '<C-b>', api.tree.close,        opts('Up'))
    vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

-- OR setup with some options
require("nvim-tree").setup({
  hijack_cursor=false,
  sort_by = "case_sensitive",

  view = {
    width = 30,
    side = "right"
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  on_attach=my_on_attach
})

local tree = require("nvim-tree.api")

vim.keymap.set('n', '<C-b>', tree.tree.toggle)

