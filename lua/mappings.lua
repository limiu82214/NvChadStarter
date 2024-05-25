require "nvchad.mappings"

-- add yours here

-- 与系统剪贴板共用
vim.opt.clipboard = "unnamedplus"

-- 将jj设置为<Esc>
local map = vim.keymap.set
map("i", "jj", "<Esc>")

-- 设置80行和120行的辅助线
vim.opt.colorcolumn = "80,120"

-- Comment <ctrl + />
map({"n", "i"}, "<C-_>", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "comment toggle" })
map(
  "v",
  "<C-_>",
  "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "comment toggle" }
)


-- buf
map("n", "gt", ":bnext<CR>")
map("n", "gT", ":bprevious<CR>")

