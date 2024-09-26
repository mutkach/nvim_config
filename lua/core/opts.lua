local opts = {
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	wrap = false,
	termguicolors = true,
	number = true,
	relativenumber = true,
}

for opt, val in pairs(opts) do
	vim.o[opt] = val
end

local colorscheme = require("utils.colorscheme")
--vim.api.nvim_set_hl(0, "Normal", {fg = "black" } )
--vim.cmd.hi("Normal guifg=black")
vim.cmd.colorscheme(colorscheme)
