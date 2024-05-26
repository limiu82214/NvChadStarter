local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    -- 设置默认主题为 `dropdown`
    theme = "dropdown",
    
    -- 其他默认配置
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
  },
  
  -- 其他扩展或自定义配置
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    git_files = {
      theme = "dropdown",
    },
  },
  
  extensions = {
    -- 如果你有其他扩展
  },
}
