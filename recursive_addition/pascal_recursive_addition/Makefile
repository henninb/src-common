ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -orecursive_addition.exe recursive_addition.pas
#	@mv recursive_addition recursive_addition.exe
	@rm recursive_addition.o
#	@ppc386 -o"ex.exe" recursive_addition.pas
#	@del recursive_addition.o recursive_addition.ow
#	@gpc --automake -s -O2 --executable-file-name recursive_addition.pas
gpc:
	@gpc recursive_addition.pas -o recursive_addition.exe
Windows_NT:
	@ppc386 -orecursive_addition.exe recursive_addition.pas
	@del recursive_addition.o
