return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      debug = true,
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "javascript", "typescript", "json", "css", "scss", "html", "vue", "yaml", "yml" },
        }),
        null_ls.builtins.formatting.black.with({
          command = "/Users/at0s/.pyenv/shims/black",
        }),
      },
    })
    -- to format the buffer need to press leader + fg
    vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>ll", vim.diagnostic.open_float, {})
  end,
}
