require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
local o = vim.opt

-- 縮排
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- 与系统剪贴板共用
vim.opt.clipboard = "unnamedplus"

-- 设置80行和120行的辅助线
vim.opt.colorcolumn = "80,120"
