local packer = require('packer')

packer.startup(function(use)
    -- recursive installation of packer
    use 'wbthomason/packer.nvim'

    -- installing mason to manage lsp and extras languages services
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate"
    }
    -- installing mason-lspconfig extension
    use 'williamboman/mason-lspconfig.nvim'

    -- lspconfig
    use 'neovim/nvim-lspconfig'

    -- luasnip for snippet expansion
    use 'L3MON4D3/LuaSnip'

    -- autocompletion plugin
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp' -- autocompletion using lsp

    -- a cool theme to fell good in all environment
    use 'folke/tokyonight.nvim'
end)
