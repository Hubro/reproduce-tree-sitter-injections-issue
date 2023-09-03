for name, url in pairs {
  nvim_treesitter = "https://github.com/nvim-treesitter/nvim-treesitter.git"
} do
  local install_path = vim.fn.fnamemodify('plugins/' .. name, ':p')
  if vim.fn.isdirectory(install_path) == 0 then
    vim.fn.system { 'git', 'clone', '--depth=1', url, install_path }
  end
  vim.opt.runtimepath:append(install_path)
end

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "astro",
    "typescript",
    "css",
  },

  highlight = {
    enable = true,
  },
})
