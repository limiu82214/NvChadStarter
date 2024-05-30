require "nvchad.mappings"

-- add yours here


-- 将jj设置为<Esc>
local map = vim.keymap.set
map("i", "jj", "<Esc>")

-- Comment <ctrl + /> 如果你沒辦法，試著改成 <C-_>
map({"n", "i"}, "<C-/>", function()
    require("Comment.api").toggle.linewise.current()
end, { desc = "comment toggle" })
map(
    "v",
    "<C-/>",
    "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
    { desc = "comment toggle" }
)


-- buf
map("n", "gt", ":bnext<CR>")
map("n", "gT", ":bprevious<CR>")

-- 恢復上一個搜尋
map("n", "<leader>fr", ":Telescope resume<CR>")

-- copy 相對路徑 的方法
vim.api.nvim_create_user_command("CopyFileRelativePath", function()
    -- 获取当前文件的绝对路径
    local absolute_path = vim.fn.expand("%:p")
    -- 获取当前工作目录
    local cwd = vim.fn.getcwd()
    -- 获取当前行号
    local line_number = vim.fn.line('.')
    -- 去掉工作目录部分，获取相对路径
    local relative_path = absolute_path:sub(#cwd + 2)

    vim.fn.setreg("+", relative_path .. ":" .. line_number)
    vim.notify('Copied "' .. relative_path .. ":" .. line_number .. '" to the clipboard!')
end, {}) 
map("n", "<leader>cp", ":CopyFileRelativePath<CR>")

-- copy 絕對路徑 的方法
vim.api.nvim_create_user_command("CopyFileAbolutePath", function()
    -- 获取当前文件的绝对路径
    local absolute_path = vim.fn.expand("%:p")
    local line_number = vim.fn.line('.')

    vim.fn.setreg("+", absolute_path .. ":" .. line_number)
    vim.notify('Copied "' .. absolute_path .. ":" .. line_number .. '" to the clipboard!')
end, {}) 




