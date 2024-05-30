local plugins = {
    "loctvl842/monokai-pro.nvim",
    configs = function()
        require("monokai-pro").setup({
            filter = "spectrum"
        })
    end,
}

return plugins
