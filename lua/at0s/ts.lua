local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  run = ":TSUpdate",
  ensure_installed = "all",
  sync_install = false,
  auto_install = true,
  ignore_install = {"just"},
  highlight = {
    enable = true,
    disable = {""},
    additional_vim_regex_highlighting = false,
  },
  ident = { enable = true, disable = {"yaml"} },
}
