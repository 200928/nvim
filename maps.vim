nnoremap co <Esc>:w<CR>:!node %<CR>
"-------------------------------------------------------------------------------
" yank
"-------------------------------------------------------------------------------
map ; :
map <leader>fd /\(\<\w\+\>\)\_s*\
"在按下 z= 就会提供更改选项
map <leader>sc :set spell!<CR>
map <leader><leader> <ESC>^/<++><CR>:nohlsearch<CR>c5l
nmap Y y$
nmap U <C-r>
"设置vim使用系统剪切板"
nnoremap <silent><leader>, :nohls<CR>
nnoremap <leader>rc :e ~/.config/nvim/init.vim<CR>
nnoremap <S-o> o<ESC>
" 快速跳转行首与行尾  
nnoremap L $
nnoremap H ^

""set clipboard^=unnamed,unnamedplus
""inoremap ( ()<Esc>i
""inoremap [ []<Esc>i
""inoremap { {}<Esc>i
""inoremap " ""<Esc>i
""inoremap ' ''<Esc>i
""inoremap ,, <Esc>la
"C-x实现单词拼写更改建议"
nnoremap <C-x> ea<C-x>s
inoremap <C-x> <ESC>ea<C-x>s

vnoremap <S-j> 6j
vnoremap <S-k> 6k 


" 插入模式移动光标
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>
" 插入模式下大写HH跳到行首
inoremap HH <Home>
" 插入模式下大写LL跳到行尾
inoremap LL <End>
" jk <Esc>
inoremap ji <Esc>l
" 向下6行
nnoremap J 6j
nnoremap <C-j> 6j
" 向上6行
nnoremap K 6k
nnoremap <C-k> 6k

" 保存
nnoremap <C-s> :w<CR>

" window Dire 
"-------------------------------------------------------------------------------<
" Split window direct '~/suckless/dwm/dwm.c'
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
"nmap <Space> <C-w>w
"map s<left> <C-w>h
"map s<up> <C-w>k
"map s<down> <C-w>j
"map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Resize window
" 在mac/linux中使用Alt键，在webssh
" 中alt没用，就使用Ctrl,WEBSSH主要的WINDOWS中使用
nmap <C-left> <C-w>>
nmap s<left> <C-w>>

nmap <C-right> <C-w><
nmap s<right> <C-w><

nmap <C-up> <C-w>+
nmap s<up> <C-w>+

nmap <C-down> <C-w>-
nmap s<down> <C-w>-

"-------------------------------------------------------------------------------
" Buffers
"-------------------------------------------------------------------------------
" Open current directory
" Coc智能处理，使用IDEA Alt+Enter 同样按键
noremap <M-Enter> :CocAction<CR>
inoremap <C-s> <ESC> :w<CR>
" 代码格式化
"noremap <leader>f :Format<CR> 
noremap <leader>f ggvG=<CR>

" 强制退出
map Q :q<CR>
" 重新加载设置
map R :source $MYVIMRC<CR>
"自动关闭标签
""inoremap <buffer> <C-v> <esc>yiwi<lt><esc>ea></><esc>hpF>i
set iskeyword+=<,>
iab <h2> <lt>h1> <lt>/h1><esc>5ha

" 全选
nmap <C-a> ggVG
" 加/减数字2
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap j jzz
nnoremap k kzz
""nnoremap + <C-a>                                                              
""nnoremap - <C-x>                                                              
"-------------------------------------------------------------------------------
" Buffers                                                                       
"-------------------------------------------------------------------------------
" Open current directory
"nmap te :tabedit
"nmap <S-Tab> :tabprev<Return>
nmap <S-Tab> :bprev<Return>
"nmap <Tab> :tabnext<Return>
nmap <Tab> :bnext<Return>
" 窗口管理器
" invoke with '-'
nmap - <Plug>(choosewin)
"nmap  sw  <Plug>(choosewin)
"nmap  <leader>w  <Plug>(choosewin)

"markdown code自动复制
nnoremap <silent><leader>yy <cmd>lua require('md').markdownCopyPlus()<CR>


