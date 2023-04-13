-- 基础设置
require('basic')
-- 快捷键映射
require("keybindings")
-- Packer 插件管理
require("plugins")
-- 主题设置
require("colorscheme")
-- 插件配置
require("plugin-config.nvim-tree")
-- 顶部状态栏配置
require("plugin-config.bufferline")
-- 底部状态栏配置
require("plugin-config.lualine")
-- 模糊搜索
require("plugin-config.telescope")
-- 启动界面
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter")
-- 内置LSP
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
require("plugin-config.indent-blankline")
require("plugin-config.nvim-autopairs")
