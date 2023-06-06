local go = vim.go

-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- editor theme
-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

vim.cmd('colorscheme tokyonight')

-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- global editor configurations
-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

-- tabulations and automatic indentation

go.tabstop = 4
go.softtabstop = 0
go.shiftwidth = 0

go.expandtab = true

go.autoindent = true

-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- Lines numbers
-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

go.number = true
go.relativenumber = true

-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- global keybinding
-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

vim.cmd('command! W :w') -- add the :W Ex command to save to prevent erros when fast type

-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- extra ExCommands
-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

function Gcwd()
    local cwd = vim.fn.getcwd()
    vim.fn.setreg('*', cwd)
    print('cwd copied to clipboard: "' .. cwd .. '"')
end

vim.cmd('command! Gcwd :lua Gcwd()<CR>')
