return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      debug = true,
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black.with({
          command = "/Users/at0s/.pyenv/shims/black",
        }),
      },
    })
    -- to format the buffer need to press leader + fg
    vim.keymap.set("n", "<leader>fg", vim.lsp.buf.format, {})
  end,
}
