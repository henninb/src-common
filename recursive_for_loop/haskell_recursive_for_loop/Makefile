ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc recursive_for_loop.hs -o recursive_for_loop.exe
	@del recursive_for_loop.o recursive_for_loop.hi
unix:
	@ghc recursive_for_loop.hs -o recursive_for_loop.exe # >&/dev/null
	@rm recursive_for_loop.o recursive_for_loop.hi
clean:
	@rm recursive_for_loop.exe
