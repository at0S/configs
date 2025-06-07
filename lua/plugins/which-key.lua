return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<C-w,k>",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer local keymaps (which-key)",
    },
  },
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>tg", "<cmd>Telescope live grep<cr>", desc = "Live grep with telescope" },
      { "<leader>tb", "<cmd>Telescope buffers<cr>", desc = "Find in buffers with telescope" },
      { "<leader>th", "<cmd>Telescope help_tags<cr>", desc = "List help tags with telescope" },
      { "<leader>tf", "<cmd>Telescope find_files<cr>", desc = "Find files with telescope" },
      { "<leader>tf", "<cmd>Telescope find_files<cr>", desc = "Find in commits with telescope" },
    })
   end,
}
