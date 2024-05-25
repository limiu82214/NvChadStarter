local plugins = {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "gopls",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
      require "configs.lspconfig_go"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "configs.null-ls"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    ft = "go",
    opts = function()
      return require "configs.null-ls"
    end,
  }
}

return plugins
