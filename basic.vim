"----vim 个人使用习惯配置start------
"
set clipboard=unnamedplus
" leader设置成空格
let mapleader=" "
"光标行下面始终有5行"
"
set scrolloff=10

set encoding=UTF-8
" 使用鼠标
set mouse=a
" 显示行号
set nu
" 相对行号
set relativenumber
"将输入的TAB自动展开成空格。开启后要输入TAB，需要Ctrl-V<TAB>
set expandtab "用空格代替TAB
" tab=4个空格
set tabstop=4
set shiftwidth=4
" 改变 vim中光标的形状
let g:db_ui_use_nerd_fonts=1
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
" 高度光标所在行
set cursorline
" 设置换行
set wrap
" 显示按下的按键
set showcmd
" 按tab显示菜单
set wildmenu
" 不需要备份文件
set nobackup
" 搜索高亮/边搜索边高亮/忽略大小写/智能大小写
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
"----vim 个人使用习惯配置end------
"ssh 远程粘贴板
if executable('clipboard-provider')
	let g:clipboard = {
				\ 'name': 'myClipboard',
				\     'copy': {
					\         '+': 'clipboard-provider copy',
					\         '*': 'env COPY_PROVIDERS=tmux clipboard-provider copy',
					\     },
					\     'paste': {
						\         '+': 'clipboard-provider paste',
						\         '*': 'env COPY_PROVIDERS=tmux clipboard-provider paste',
						\     },
						\ }
endif
"随机选一个颜色风格
function RandomColorScheme()
  let mycolors = split(globpath(&rtp,"**/colors/*.vim"),"\n") 
  exe 'so ' . mycolors[localtime() % len(mycolors)]
  unlet mycolors
endfunction

"call RandomColorScheme()

:command NewColor call RandomColorScheme()


" 文件类型设置 "{{{
" ---------------------------------------------------------------------
" JSX 语法高亮
" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx,*.js set filetype=typescriptreact

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"打开缩进线
 ""使用每层缩进的空格数
 "set shiftwidth=4
 ""方便在开启了et后使用退格（backspace）键，每次退格将删除X个空格
 "set softtabstop=4
 "" 使回格键（backspace）正常处理indent(缩进位置), eol(行结束符), start(段首), 很奇怪 Vim 默认竟然不允许在这些地方使用 backspace
 "set backspace=indent,eol,start
 ""开启时，在行首按TAB将加入 shiftwidth 个空格，否则加入 tabstop 个空格
 "set smarttab
"打开缩进线
"let g:indentLine_enabled = 1
"let g:indentLine_char='¦'
