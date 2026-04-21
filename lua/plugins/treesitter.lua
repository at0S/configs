return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = "all",
      ignore_install = { "just", "systemverilog" },
      auto_install = true,
      highlight = { enable = true },
    })
  end,
}
