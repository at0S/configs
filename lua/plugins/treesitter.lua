return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = "all",
      ignore_install = { "just", "systemverilog" },
      auto_install = true,
    })
  end,
}
