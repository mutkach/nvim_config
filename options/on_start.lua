local builtin = require("telescope.builtin")
local colorscheme = require("options.colorscheme")

local check_colorscheme = function()
    local fd = io.open("/Users/nikita/colorscheme.lock")
    local color_schemes = {
      ['Selenized Light (Gogh)'] = 'selenized';
      ['Selenized Dark (Gogh)'] = 'selenized';
      ['Atelier Cave Light (base16)'] = 'Atelier_CaveLight';
      ['Atelier Cave (base16)'] = 'Atelier_CaveDark';
      ['Atelier Sulphurpool (base16)'] = 'Atelier_SulphurpoolDark';
      ['Atelier Sulphurpool Light (base16)'] = 'Atelier_SulphurpoolLight';
      ['default'] = 'vim'
    }
    if fd then
        local scheme = fd:read()
        vim.cmd("colorscheme " .. color_schemes[scheme])
        if scheme:find("ight") then
            vim.opt.background= "light"
        else
            vim.opt.background= "dark"
        end
    end
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.expand("%:p")
    check_colorscheme()
    if vim.fn.isdirectory(arg) == 1 then
      -- Close the buffer that was opened (directory)
      vim.cmd("bd")
      -- Set the current working directory to the opened directory
      vim.cmd("cd " .. arg)
      -- Open telescope find_files
      -- vim.cmd("Telescope find_files")
      builtin.find_files({sorting_strategy="ascending"})
    end
  end,
})
