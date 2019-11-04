ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -orecursive_for_loop.exe recursive_for_loop.pas
#	@mv recursive_for_loop recursive_for_loop.exe
	@rm recursive_for_loop.o
#	@ppc386 -o"ex.exe" recursive_for_loop.pas
#	@del recursive_for_loop.o recursive_for_loop.ow
#	@gpc --automake -s -O2 --executable-file-name recursive_for_loop.pas
gpc:
	@gpc recursive_for_loop.pas -o recursive_for_loop.exe
Windows_NT:
	@ppc386 -orecursive_for_loop.exe recursive_for_loop.pas
	@del recursive_for_loop.o
