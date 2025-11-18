require("packer")
package.path = package.path .. ";/Users/nikita/.config/nvim/?.lua"

require("options.basic")
require("options.on_start")
require("options.colorscheme")
require("options.keys")
require("options.lsp")
require("options.trouble")
require("options.treesitter")
