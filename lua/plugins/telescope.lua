return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>tf', function()
      require("telescope.builtin").find_files { hidden = true }
      end, { desc = 'Find files with telescope' })
    vim.keymap.set('n', '<leader>tt', builtin.live_grep, { desc = 'Live grep with telescope' })
    vim.keymap.set('n', '<leader>tb', builtin.buffers, { desc = 'List buffers with telescope' })
    vim.keymap.set('n', '<leader>th', builtin.help_tags, { desc = 'List help tags with telescope' })
    vim.keymap.set('n', '<leader>tc', builtin.git_commits, { desc = 'Find in commits with telescope' })
  end
}
