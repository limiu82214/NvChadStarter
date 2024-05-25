return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "delve",
        "go-debug-adapter",
        "gofumpt",
        "goimports-reviser",
        "golangci-lint",
        "golines",
        "gomodifytags",
        "gotests",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "comment",
        "javascript",
        "jsdoc",
        "jsonc",
        "lua",
        "markdown",
        "regex",
        "yaml",
        "go",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitignore",
        "gomod",
        "gosum",
        "gowork",
        "gotmpl",
      },
      highlight = {
        enable = true,
      },
    },
  },
  {
    -- go lsp
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig_go"
    end,
  },
  {
    -- save to gofumpt
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "configs.null-ls"
    end,
  },
--  {
--    "mfussenegger/nvim-dap",
--    ft = "go",
--    opts = function()
--      return require "configs.null-ls"
--    end,
--  }
}
