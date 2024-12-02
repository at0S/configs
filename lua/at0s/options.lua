-- the lines, all about lines
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.cursorline = true

vim.opt.wrap = false
vim.opt.hlsearch = true

-- tabs, all about tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.smartindent = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"

-- this is a little hack to  satisfy the syntax requirements of Makefiles
vim.api.nvim_create_autocmd("FileType", {
  pattern = "make",
  callback = function()
    vim.opt_local.expandtab = false   -- Use hard tabs, not spaces
    vim.opt_local.tabstop = 8        -- Set width of a tab character
    vim.opt_local.shiftwidth = 8     -- Indentation amount
  end,
})
