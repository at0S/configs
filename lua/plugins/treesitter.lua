return {
  "nvim-treesitter/nvim-treesitter", name = "treesitter",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup {
      run = ":TSUpdate",
      ensure_installed = "all",
      sync_install = false,
      auto_install = true,
      ignore_install = {"just", "systemverilog"},
      highlight = {
        enable = true,
        disable = {""},
        additional_vim_regex_highlighting = false,
      },
      ident = { enable = true, disable = {"yaml"} }
    }
  end
}
