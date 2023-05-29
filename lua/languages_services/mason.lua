local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')


mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lspconfig.setup({
    automatic_installation = true -- install all language detected by lspconfig
})
