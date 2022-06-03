"编译环境
func CompileRun()
	exec "w"
	"C程序
	if &filetype == 'c'
		exec "!gcc -Wall -enable-auto-import % -g -o %<"
	"c++程序
	elseif &filetype == 'cpp'
		exec "!g++ -fdiagnostics-color=always % -g -o %<"
	"Java程序
	elseif &filetype == 'java'
		exec "!javac %"
	endif
endfunc
"结束定义CompileRun

"定义Run函数
func Run()
	if &filetype == 'c' || &filetype == 'cpp'
		exec "!./%<"
	elseif &filetype == 'java'
		exec "!java %<"
	endif
endfunc

"定义Debug函数，用来调试程序
func Debug()
	exec "w"
	"C程序
	if &filetype == 'c'
		exec "!gcc % -g -o %<"
		exec "!gdb %<"
		elseif &filetype == 'cpp'
		exec "!g++ % -g -o %<"
		exec "!gdb %<"
	"Java程序
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!jdb %<"
	endif
endfunc
"结束定义Debug
"设置程序的运行和调试的快捷键F5和Ctrl-F5
map <F5> :call CompileRun()<CR>
map <F6> :call Run()<CR>
map <C-F5> :call Debug()<CR>
