local go = vim.go


-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- Globals options
-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

vim.g.mapleader = ' '

-- disable netrw file explorer to replace it with another better file browser
local disable_netrw = false

if disable_netrw then
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
end

-- setting the timeout lenght for write maps
go.timeoutlen = 10000

-- tabulations and automatic indentation
go.tabstop = 4
go.softtabstop = 0
go.shiftwidth = 0

go.expandtab = true
go.autoindent = true

-- set lines numbers
go.number = true
go.relativenumber = true


-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
-- global keybinding
-- -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

-- add the :W Ex command to save for prevent erros when fast type
vim.cmd('command! W :w')
