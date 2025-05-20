return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "/Users/at0s/Library/Mobile Documents/iCloud~md~obsidian/Documents/my-notes",
      },
      {
        name = "work",
        path = "/Users/at0s/Library/Mobile Documents/iCloud~md~obsidian/Documents/work",
      },
    },
  },
}
