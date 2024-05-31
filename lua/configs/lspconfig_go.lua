local capabilities = require("nvchad.configs.lspconfig").capabilities
local on_attach = require("nvchad.configs.lspconfig").on_attach
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.gopls.setup {
    on_attach = function(client, bufnr)
        on_attach(client, bufnr)

        -- 可以用 gh 查看 滑鼠 hover 的訊息
        local opts = { noremap = true, silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

    end,
    capabilities = capabilities,

    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gowork", "gotmpl"},
    root_dir = util.root_pattern("project.root","go.work", "go.mod", ".git"),
    setting = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            },
        },
    },
}

