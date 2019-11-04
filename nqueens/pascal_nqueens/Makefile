ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -onqueens.exe nqueens.pas
#	@mv nqueens nqueens.exe
	@rm nqueens.o
#	@ppc386 -o"ex.exe" nqueens.pas
#	@del nqueens.o nqueens.ow
#	@gpc --automake -s -O2 --executable-file-name nqueens.pas
gpc:
	@gpc nqueens.pas -o nqueens.exe
Windows_NT:
	@ppc386 -onqueens.exe nqueens.pas
	@del nqueens.o
