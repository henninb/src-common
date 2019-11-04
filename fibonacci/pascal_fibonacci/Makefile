ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ofibonacci.exe fibonacci.pas
#	@mv fibonacci fibonacci.exe
	@rm fibonacci.o
#	@ppc386 -o"ex.exe" fibonacci.pas
#	@del fibonacci.o fibonacci.ow
#	@gpc --automake -s -O2 --executable-file-name fibonacci.pas
gpc:
	@gpc fibonacci.pas -o fibonacci.exe
Windows_NT:
	@ppc386 -ofibonacci.exe fibonacci.pas
	@del fibonacci.o
