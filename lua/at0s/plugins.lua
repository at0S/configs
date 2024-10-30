local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup("plugins")
   -- { "williamboman/mason-lspconfig.nvim", name = "mason-lspconfig" },
   -- { "williamboman/mason.nvim", name = "mason" }, 
   -- { "neovim/nvim-lspconfig", name = "lspconfig" },

-- Configure any other settings here. See the documentation for more details. colorscheme that will be used when installing plugins. install = { colorscheme = { "rose-pine" } }, automatically check for plugin updates checker = { enabled = true }, })
--
--require("mason").setup({
--  ui = {
--    icons = {
--      package_installed = "✓",
--      package_pending = "➜",
--      package_uninstalled = "✗"
--    }
--  }
})
--
--require("mason-lspconfig").setup()

