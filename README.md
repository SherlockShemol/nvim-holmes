# :fire:nvimholmes

通过学习[《Neovim 配置实战：从 0 到 1 打造自己的 IDE》](https://juejin.cn/book/7051157342770954277)（[Github address)](https://github.com/nshen/learn-neovim-lua)我配置了自己的neovim，这个repo供个人使用。

OS:Ubuntu 22.04

## preview

Start Interface

![image-20230413202720404](/home/shemol/.config/Typora/typora-user-images/image-20230413202720404.png)





## 整体框架

```txt
├── init.lua
├── LICENSE
├── lua
│   ├── basic.lua
│   ├── colorscheme.lua
│   ├── keybindings.lua
│   ├── lsp
│   │   ├── cmp.lua
│   │   ├── config
│   │   │   └── lua.lua
│   │   ├── setup.lua
│   │   └── ui.lua
│   ├── plugin-config
│   │   ├── bufferline.lua
│   │   ├── dashboard.lua
│   │   ├── indent-blankline.lua
│   │   ├── lualine.lua
│   │   ├── nvim-autopairs.lua
│   │   ├── nvim-tree.lua
│   │   ├── nvim-treesitter.lua
│   │   ├── project.lua
│   │   └── telescope.lua
│   └── plugins.lua
├── plugin
│   └── packer_compiled.lua
└── README.md
```



## PreInstall

待填

## Plug-in

:wind_chime:插件管理器：Packer.nvim

### Packer.nvim

- `:PackerCompile`： 每次改变插件配置时，必须运行此命令或 `PackerSync`, 重新生成编译的加载文件

- `:PackerClean` ： 清除所有不用的插件

- `:PackerInstall` ： 清除，然后安装缺失的插件

- `:PackerUpdate` ： 清除，然后更新并安装插件

- `:PackerSync` : 执行 `PackerUpdate` 后，再执行 `PackerCompile`

- `:PackerLoad` : 立刻加载 opt 插件

- 无论**安装**还是**更新**插件，只需要下面的命令就够了。

  ```
  :PackerSync
  ```

### ColorScheme

:ocean: TokyoNight

### 插件

- [nvim-tree](https://github.com/nvim-tree)/**[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)**               -- 文件目录树
- [akinsho](https://github.com/akinsho)/**[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)**              -- 顶部文件栏
- [nvim-lualine](https://github.com/nvim-lualine)/**[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**            -- 底部状态栏(status bar)
- [arkav](https://github.com/arkav)/**[lualine-lsp-progress](https://github.com/arkav/lualine-lsp-progress)**          -- 底部状态栏的扩展（文件名后边增加 `lsp_progress` 进度显示
- [nvim-telescope](https://github.com/nvim-telescope)/**[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** -- 模糊搜索快速打开文件
- [BurntSushi](https://github.com/BurntSushi)/**[ripgrep](https://github.com/BurntSushi/ripgrep)**                        -- telescope的依赖(Ubuntu可通过apt安装)
- [sharkdp](https://github.com/sharkdp)/**[fd](https://github.com/sharkdp/fd)**                                       -- telescope的依赖(可通过npm全局安装)
- [Telescope extensions](https://github.com/nvim-telescope/telescope.nvim/wiki/Extensions)                     -- Telescope扩展，未安装
- [nvimdev](https://github.com/nvimdev)/**[dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)**           -- neovim启动页
- [nvim-treesitter](https://github.com/nvim-treesitter)/**[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**  -- 在neovim中实现代码高亮，增量选择(增量选择、代码缩进、代码折叠未实现)
- [nvim-treesitter第三方功能模块及插件](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Extra-modules-and-plugins) --未实现
- [williamboman](https://github.com/williamboman)/**[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**     -- 提供LSP常见服务的配置方式
- [williamboman](https://github.com/williamboman)/**[mason.nvim](https://github.com/williamboman/mason.nvim)**         -- 管理并自动安装Language Server
- [hrsh7th ](https://github.com/hrsh7th)/**[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**  	                  -- 代码补全
- [nshen ](https://github.com/nshen)/**[learn-neovim-lua](https://github.com/nshen/learn-neovim-lua)**             -- 括号补全         



## 常用按键

### 分屏

- `sv`垂直分屏
- `sh`水平分屏
- `sc`关闭当前分屏界面
- `so`关闭其他
- `Alt + hjkl`窗口间跳转

-  `Ctrl + 上下左右` 或者 `s,` `s.` `sj` `sk` 调整窗口比例
-  `Ctrl+u` / `Ctrl + d` 来滚动代码(up/down)



### nvim-tree

- `Alt + m `打开/关闭侧边文件侧边栏

- `Ctrl + v`f分屏打开文件

- `a` 新建文件

- `r` 重命名文件

- `x` 剪切文件

- `c` 复制文件

- `p` 粘贴文件

-  `Alt + m` 打开/关闭文件浏览器， `j/k` 上下移动

-   `Alt + h` / `Alt + l` 可以左右窗口跳转

- [nvim-tree documentation](https://docs.rockylinux.org/books/nvchad/nvchad_ui/nvimtree/)

### bufferline

- `Ctrl + h` 和 `Ctrl + l` 左右切换标签页
- `Ctrl + w` 关闭当前标签页

### telescope

- `:Telescope find_files` 打开搜索文件窗口，快速打开文件。 **-> `Ctrl + p` **
- 全局查找`:Telescope live_grep`   **-> `Ctrl + f`**  
-  `:Telescope buffers` 列出打开的 buffers
-  `:Telescope git_files` 列出 git 文件
- `:Telescope man_pages` 列出帮助
- `Ctrl + j/k` 上下移动，想要代替Up和Down，因为j，k离手要更近
- `Ctrl + n/p` 向后或向前翻阅历史记录(next/prev)
- `Ctrl + u/d` 预览窗口向上/下滚动(up/down)

### nvim-treesitter

- `:TSInstall <language_to_install>`安装指定语言的language parser用以代码高亮
-  `:TSUninstall <language_to_uninstall>` 卸载对应的language parser
-  `:TSModuleInfo` 命令查看模块是否开启成功

### Mason

- `:Mason` 查看Language Server信息
- `i`安装指定Server

### LSP

- `gd` 跳转到定义，可以跨文件跳转
- :`%s/原变量名/要修改后的变量名/g`然后`Enter`(这其实是neovim的操作不是LSP的)统一修改变量名称
- 

## To do

- [ ] change Packer.nvim to lazy.nvim 

the brief lazy.nvim introduction can be seen [here](https://zhuanlan.zhihu.com/p/599306319), isn't it exciting ? :laughing:

