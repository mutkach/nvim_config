return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
		},
		config = function()
			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<C-u>"] = false,
							["<C-d>"] = false,
						},
					},
                    sorting_strategy='ascending',
                    layout_config = {
                      vertical = { width = 0.5 }
                    },
				},
			})
			-- Enable telescope fzf native, if installed
			pcall(require("telescope").load_extension, "fzf")
			local map = require("utils.keys").map
			map("n", "<leader>b", require("telescope.builtin").buffers, "Open buffers")
			map("n", "<leader>f", require("telescope.builtin").find_files, "Files")
			map("n", "<leader>d", require("telescope.builtin").diagnostics, "Diagnostics")
		end,
	},
}
