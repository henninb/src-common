ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc example.hs -o example.exe
	@del example.o example.hi
unix:
#	@stack ghc example.hs -o example.exe # >&/dev/null
	@stack ghc example.hs
	@rm example.o example.hi
clean:
	@rm example.exe
