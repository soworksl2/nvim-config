local lspconfig = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')


-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- 
-- Configurations
-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- 

local DEFAULTS_LSPS = {
    require('plugins_config.lsp_servers_configuration.pyright'),
    require('plugins_config.lsp_servers_configuration.lua_ls'),
    require('plugins_config.lsp_servers_configuration.omnisharp'),
}

-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- 
-- initialization
-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- 

local cmp_lsp_capabilities = cmp_lsp.default_capabilities()
local default_lsp_config = {
    capabilities = cmp_lsp_capabilities,

    single_file_support = false,

    root_dir = function (filename, _)
        local cwd = vim.fn.getcwd()
        local filename_normalized = ''

        cwd = string.gsub(cwd, '\\', '/')
        filename_normalized = string.gsub(filename, '\\', '/')

        local filename_is_in_cwd = string.match(filename_normalized, '^' .. cwd)

        if filename_is_in_cwd then
            return cwd
        else
            return nil
        end
    end,

    on_attach = function (client, _)
        --TODO: this pieec of code is simulate that the server does not single_file_support
        --semantic tokens. this is because some LSP servers (the stupid omnisharp) has a legend
        --that is not as defined in the specification and it broke and bug neovim.

        --meanwhile it will be disable, to decide if it is better to use Treesitter or
        --try to find and code a elegant and global solution to keep the semantic tokens
        --for servers that support it. or even if the community invent a solution for this problem
        --if I decide to keep just with Treesitter, please delete this TODO.

        client.server_capabilities.semanticTokensProvider = nil
    end
}

for _, default_lsp in ipairs(DEFAULTS_LSPS) do
    local server_id = default_lsp.server_id
    local server_configuration = default_lsp.configuration or {}

    server_configuration = vim.tbl_extend('force', default_lsp_config, server_configuration)

    lspconfig[server_id].setup(server_configuration)
end
