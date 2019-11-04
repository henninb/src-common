all: win32
win32:
	@clisp --silent -c -l file_read.lsp -o file_read.exe > NUL
	@del file_read.lis file_read.lib
#gcl -compile file_read.hello.lsp
#gcl -compile file_read.lsp -o file_read.lsp.exe
unix:
	@clisp --silent -c -l file_read.lsp -o file_read.exe > /dev/null
	@rm file_read.lis file_read.lib
#\Device\Null or NUL