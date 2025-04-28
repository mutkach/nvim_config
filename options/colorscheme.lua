local schemes = {
    'Atelier_CaveLight',
    'Atelier_CaveDark',
    'Atelier_SulphurpoolLight',
    'Atelier_SulphurpoolDark',
}
local iter = 1
NextColorScheme = function()
    iter = (iter) % #schemes + 1
    vim.cmd("colorscheme " .. schemes[iter])
end

PrevColorScheme = function()
    iter = (iter-2) % #schemes + 1
    vim.cmd("colorscheme " .. schemes[iter])
end

vim.cmd [[colorscheme Atelier_SulphurpoolDark]]
