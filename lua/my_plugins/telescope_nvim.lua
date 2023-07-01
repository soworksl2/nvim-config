return {
    'nvim-telescope/telescope.nvim', branch='0.1.x',
    dependencies={
        'nvim-lua/plenary.nvim'
    },
    config=function ()
        require('telescope').setup()

        print('telescope configured')
    end
}
