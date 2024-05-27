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
