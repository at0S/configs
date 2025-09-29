return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/nvim-lspconfig",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "ts_ls", "pyright", "gh_actions_ls", "rust_analyzer", "dockerfile_language_server" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("dockerfile_language_server", {})
      vim.lsp.config("gh_actions_ls", {})
      vim.lsp.config("rust_analyzer", {
          settings = {
            ["rust_analyzer"] = {
              cargo = {
              allFeatures = true,
              },
            checkOnSave = {
              command = "clippy"
              },
            },
          },
        })

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("ts_ls")
      vim.lsp.enable("pyright")
      vim.lsp.enable("gh_actions_ls")
      vim.lsp.enable("rust_analyzer")
      vim.lsp.enable("dockerfile_language_server")
      
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, {})
    end,
  }
}
