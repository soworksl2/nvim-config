return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'L3MON4D3/LuaSnip',

        'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
        local luasnip = require('luasnip')
        local cmp = require('cmp')

        cmp.setup({
            snippet = {
              expand = function(args)
                luasnip.lsp_expand(args.body)
              end,
            },

            window = {
              completion = cmp.config.window.bordered(),
              documentation = cmp.config.window.bordered(),
            },

            mapping = cmp.mapping.preset.insert({
              ['<C-Down>'] = cmp.mapping.scroll_docs(-4),
              ['<C-Up>'] = cmp.mapping.scroll_docs(4),
              ['<C-j>'] = cmp.mapping.complete(),
              ['<C-e>'] = cmp.mapping.abort(),
              ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),

            sources = cmp.config.sources({
              { name = 'nvim_lsp' }
            }),
        })
    end
}
