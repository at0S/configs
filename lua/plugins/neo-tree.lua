return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem={
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignore = false,
          hide_by_name = {
            "node_modules",
            ".cache",
            ".vscode",
            ".idea",
            ".DS_Store",
            "__pycache__",
            ".pytest_cache",
            ".mypy_cache",
            ".venv",
          },
        },
      },
    })
  end
}
