return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      require('blame').setup {}
      vim.keymap.set('n', '<C-b>', ':BlameToggle<CR>', { noremap = true, silent = true })
    end,
  },
}
