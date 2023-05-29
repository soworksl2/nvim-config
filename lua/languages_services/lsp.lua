local lspconfig = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')


-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- 
-- Configurations
-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- 

local DEFAULTS_LSPS = {
    'pyright',
    'lua_ls',
    'clangd',
}

-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- 
-- initialization
-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- 

local cmp_lsp_capabilities = cmp_lsp.default_capabilities()

for _, default_lsp in ipairs(DEFAULTS_LSPS) do
    lspconfig[default_lsp].setup({
        capabilities = cmp_lsp_capabilities
    })
end
