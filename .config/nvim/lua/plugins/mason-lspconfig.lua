return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    automatic_enable = {
      exclude = {
        "lua_ls"
      }
    },
    ensure_installed = {
      "clangd",
      "cssls",
      "emmet_ls",
      "eslint",
      "gopls",
      "haxe_language_server",
      "html",
      "jsonls",
      "lua_ls",
      "marksman",
      "sqlls",
      "ts_ls",
      "yamlls"
    }
  },
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {}
    },
    {
      "neovim/nvim-lspconfig",
    }
  },
}
