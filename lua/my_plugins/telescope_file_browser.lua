return {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies={
        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim',
    },
    config=function ()
        require('telescope').load_extension('file_browser')

        vim.api.nvim_set_keymap('n', '<leader>tfb', ':Telescope file_browser<cr>', {})

        print('fb loaded')
    end
}
