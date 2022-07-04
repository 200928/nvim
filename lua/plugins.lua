---@diagnostic disable: undefined-global
--在没有安装packer的电脑上，自动安装packer插件
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    --fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
    fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})	--csdn加速镜像
    vim.cmd 'packadd packer.nvim'
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup({
    function()
        use 'wbthomason/packer.nvim'-- Packer can manage itself

        -- 下面状态栏
        use {
            "nvim-lualine/lualine.nvim",
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }
        -- bufferline 显示标签页,与lualine配合使用
        use "akinsho/bufferline.nvim"

        -- 缓冲区文件管理器
        use "lxyoucan/bufexplorer"

        -- 自动保存
        use "Pocco81/AutoSave.nvim"

        -- 括号自动补全
        use 'jiangmiao/auto-pairs'

        -- 中文手册
        use 'yianwillis/vimcdoc'

        -- 缩进线
        use 'Yggdroot/indentLine'

        -- 主题
        use "sainnhe/gruvbox-material"
        use "yuttie/hydrangea-vim"
        use 'liuchengxu/space-vim-theme' --space_vim_theme
        use 'flazz/vim-colorschemes'	 --
        use 'connorholyday/vim-snazzy'   -- snazzy
        use 'rakr/vim-one'               -- one

        -- 打开ranger小窗
        use "kevinhwang91/rnvimr"

        -- 文件管理插件，类似与ranger。小孩子才做选择，我都要
        use {
            "Shougo/defx.nvim",
            requires = {
                "kristijanhusak/defx-icons", -- dexf文件管理图标支持
                "t9md/vim-choosewin" -- 窗口选择器,可以让defx使用i打开文件
            }
        }
        ---------------------------------------代码提示-------------------------------------------
        --Nvim LSP 客户端的快速入门配置
        use "neovim/nvim-lspconfig"
        use {
            "hrsh7th/nvim-cmp",
            requires = {
                "hrsh7th/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
                -- --以下插件可选，可以根据个人喜好删减
                "onsails/lspkind-nvim", --美化自动完成提示信息
                "hrsh7th/cmp-buffer", --从buffer中智能提示
                "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
                "octaltree/cmp-look", --用于完成英语单词
                "hrsh7th/cmp-path", --自动提示硬盘上的文件
                "hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算
                "f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议
                "hrsh7th/cmp-emoji", --输入: 可以显示表情
            }
        }
        -- ---------------------------------------代码提示-------------------------------------------
        -- -- 代码段提示
        use {
            "L3MON4D3/LuaSnip",
            requires = {
                "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
                "rafamadriz/friendly-snippets" --代码段合集
            }
        }

        --markdown预览插件
        use "iamcco/markdown-preview.nvim"

        use 'williamboman/nvim-lsp-installer'

        ---------------------------------------LSP-------------------------------------------
        -- 自动为尚不支持 Neovim 0.5 内置 lsp 客户端的配色方案创建缺少的 LSP 诊断突出显示组。
        use "folke/lsp-colors.nvim"
        -- 基于neovim 内置lsp 的轻量级lsp 插件，具有高性能UI。非常酷
        use 'rinx/lspsaga.nvim'

        -- Telescope
        use "nvim-telescope/telescope-live-grep-args.nvim"
        use {
            "nvim-telescope/telescope.nvim",
            requires = {
                "nvim-lua/plenary.nvim",
                "kyazdani42/nvim-web-devicons"
            }
        }
        use "nvim-telescope/telescope-ui-select.nvim"
        use "nvim-telescope/telescope-rg.nvim"
        -- use "MattesGroeger/vim-bookmarks"
        -- use "tom-anders/telescope-vim-bookmarks.nvim"
        use "nvim-telescope/telescope-dap.nvim"
        -- 加速文件搜索速度,如果安装失败需要到插件目录执行make命令手动编译
        -- 用了这个插件以后，貌似更快了(感觉输入更跟手了，可能是心理作用)。但是对于我的小项目感受不是很明显
        use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}

        --语法高亮
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }

        --彩虹括号
        use 'luochen1990/rainbow'

        --代码调试
        --use 'puremourning/vimspector'

    end,
    config = {
        max_jobs = 16,
        git = {
            -- default_url_format = ''
        },
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end
        }
    }
})
