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
