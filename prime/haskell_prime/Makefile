ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc prime.hs -o prime.exe
	@del prime.o prime.hi
unix:
	@ghc prime.hs -o prime.exe # >&/dev/null
	@rm prime.o prime.hi
clean:
	@rm prime.exe
