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
                -- defaults
                "vim",
                "vimdoc",
                "lua",
                "luadoc",
                "bash",
                "comment",
                "markdown",
                "yaml",
                "regex",

                -- web
                "javascript",
                "jsdoc",
                "jsonc",

                -- go
                "go",
                "gomod",
                "gosum",
                "gowork",
                "gotmpl",

                -- git
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitignore",
            },
            highlight = {
                enable = true,
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        config = function()
            require "configs.telescope"
        end,
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
    {
        -- EasyMotion 插件的配置
        "easymotion/vim-easymotion",
        lazy = false,
        config = function()
            vim.api.nvim_set_keymap('n', 's', '<Plug>(easymotion-bd-f)', { noremap = true, silent = true })
            -- vim.api.nvim_set_keymap('n', 's', '<Plug>(easymotion-sn)', { noremap = true, silent = true })
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
