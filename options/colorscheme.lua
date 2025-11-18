local schemes = {
    'Atelier_CaveLight',
    'Atelier_SulphurpoolLight',
    'Atelier_CaveDark',
    'Atelier_SulphurpoolDark',
    'solarized',
}
local iter = 0
NextColorScheme = function()
    iter = (iter) % #schemes + 1
    local scheme = schemes[iter]
    if scheme:find("Dark") then
        vim.cmd("set background=" .. "dark")
    else
        vim.cmd("set background=" .. "light")
    end
    vim.cmd("colorscheme " .. schemes[iter])
end

PrevColorScheme = function()
    iter = (iter-2) % #schemes + 1
    local scheme = schemes[iter]
    if scheme:find("Dark") then
        vim.cmd("set background=" .. "dark")
    else
        vim.cmd("set background=" .. "light")
    end
    vim.cmd("colorscheme " .. schemes[iter])
end

local check_colorscheme = function()
    local fd = io.open("/Users/nikita/colorscheme.lock")
    local color_schemes = {
      ['Selenized Light (Gogh)'] = 'solarized';
      ['Selenized Dark (Gogh)'] = 'solarized';
      ['Atelier Cave Light (base16)'] = 'Atelier_CaveLight';
      ['Atelier Cave (base16)'] = 'Atelier_CaveDark';
      ['Atelier Sulphurpool (base16)'] = 'Atelier_SulphurpoolDark';
      ['Atelier Sulphurpool Light (base16)'] = 'Atelier_SulphurpoolLight';
      ['Paraiso Dark'] = 'base16-paraiso';
      ['default'] = 'vim'
    }
    if fd then
        local scheme = fd:read()
        vim.schedule(function()
            vim.cmd("colorscheme " .. color_schemes[scheme])

            if scheme:find("ight") then
                vim.opt.background= "light"
            else
                vim.opt.background= "dark"
            end
        end)
    end
end

local fwatch = require('fwatch')
local colorscheme_lock = "/Users/nikita/colorscheme.lock"
fwatch.watch("/Users/nikita/colorscheme.lock", {
  on_event = function()
      check_colorscheme()
  end
})

--vim.cmd [[colorscheme Atelier_SulphurpoolDark]]
--vim.opt.background = "dark"
