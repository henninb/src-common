ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
Windows_NT:
	@clisp --quiet --silent -c -l example.lsp -o example.exe > NUL
#	@clisp --silent -c -l example.lsp -o example.exe > NUL
	@del example.lis example.lib
#	gcl -compile example.hello.lsp
#	gcl -compile example.lsp -o example.lsp.exe
unix:
	@clisp --quiet --silent -c -l example.lsp -o example.exe > /dev/null
#	@clisp --silent -c -l example.lsp -o example.exe > /dev/null
	@rm example.lis example.lib
