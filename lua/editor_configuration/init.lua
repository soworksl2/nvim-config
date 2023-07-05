local go = vim.go

-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- initial important configurations
-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

vim.g.mapleader = ' '

-- disable netrw file explorer to replace it with another better
local disable_netrw = false

if disable_netrw then
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
end

-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- global editor configurations
-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

-- setting the timeout lenght for write maps

go.timeoutlen = 10000

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
