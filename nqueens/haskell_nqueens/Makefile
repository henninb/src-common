ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc nqueens.hs -o nqueens.exe
	@del nqueens.o nqueens.hi
unix:
	@ghc nqueens.hs -o nqueens.exe # >&/dev/null
	@rm nqueens.o nqueens.hi
clean:
	@rm nqueens.exe
