-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}


M.ui = {
    theme = "monekai",

    -- hl_override = {
    -- 	Comment = { italic = true },
    -- 	["@comment"] = { italic = true },
    -- },
    --
    --
    -- 狀態列顯示完整路徑
    statusline = {
        theme = "default",
        order = { "mode", "relativepath", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
        modules = {
            relativepath = function()
                local path = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0))

                vim.cmd("highlight St_relativepath guifg=#626a83 guibg=#2a2b36")

                if path == "" then
                    return ""
                end

                return "%#St_relativepath#  " .. vim.fn.expand("%:.:h") .. " /"
            end,
        },
    },

}
M.plugins = "plugins.plugins"






return M
