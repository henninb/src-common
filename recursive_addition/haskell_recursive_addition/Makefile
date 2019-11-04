ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc recursive_addition.hs -o recursive_addition.exe
	@del recursive_addition.o recursive_addition.hi
unix:
	@ghc recursive_addition.hs -o recursive_addition.exe # >&/dev/null
	@rm recursive_addition.o recursive_addition.hi
clean:
	@rm recursive_addition.exe
