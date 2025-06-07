return {
  "nvim-telescope/telescope.nvim", tag = "0.1.8", dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Find files with a telescope' })
    vim.keymap.set('n', '<leader>tg', builtin.live_grep, { desc = 'Live grep with telescope' })
    vim.keymap.set('n', '<leader>tb', builtin.buffers, { desc = 'List buffers with telescope' })
    vim.keymap.set('n', '<leader>th', builtin.help_tags, { desc = 'List help tags with telescope' })
  end
}
