local builtin = require('telescope.builtin')


vim.api.nvim_set_keymap('n', '<leader>tff', '', {
    noremap=true,
    callback=function ()
        builtin.find_files()
    end
})
