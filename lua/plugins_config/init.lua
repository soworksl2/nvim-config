local plugins_config_module = 'plugins_config'

local all_config = {
    'lsp',
    'nvim_tree',
}

for _, config in pairs(all_config) do
    local full_config_name = plugins_config_module .. '.' .. config

    require(full_config_name)
end
