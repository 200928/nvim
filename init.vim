 ""__  __ _               _   _                 _
""|  \/  (_)_ __   __ _  | \ | | ___  _____   _(_)_ __ ___
""| |\/| | | '_ \ / _` | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
""| |  | | | | | | (_| | | |\  |  __/ (_) \ V /| | | | | | |
""|_|  |_|_|_| |_|\__, | |_| \_|\___|\___/ \_/ |_|_| |_| |_|
                ""|___/
" 基础配置
" lua require('basic')
runtime ./basic.vim

" 按键映射
" lua require('keybindings')
runtime ./maps.vim

" 插件管理 ./lua/plugins.lua
lua require('plugins')

" 插件配置
source ~/.config/nvim/after/plugin/defx-icons.rc.vim
source ~/.config/nvim/after/plugin/rainbow.rc.vim
"lua require("plugin-config/nvim-tree")
"lua require('plugin-config/bufferline')
"lua require('plugin-config/nvim-treesitter')
"lua require('lsp/setup')
"lua require('lsp/nvim-cmp')

" 主题配置
"source ~/.config/nvim/colors/gruvbox_material.rc.vim
"source ~/.config/nvim/colors/lightline.vim
"colorscheme space_vim_theme
"colorscheme snazzy
"colorscheme space_vim_theme
colorscheme gruvbox
let g:SnazzyTransparent = 0 "透明度
"set background=dark
"colorscheme gruvbox
