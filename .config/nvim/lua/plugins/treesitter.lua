return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "c",
        "cpp",
        "css",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "typescript",
        "vim",
        "vimdoc"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
