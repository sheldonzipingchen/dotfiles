-- 基础配置
require("basic")
-- 快捷键映射
require("keybindings")
-- lazy.nvim插件管理
require("plugins")
-- 主题设置
require("colorscheme")
-- 自动命令
require("autocmds")

-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.nvim-treesitter")
require("plugin-config.indent-blankline")

-- 内置lsp
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")

-- 格式化
-- require("lsp.null-ls")
