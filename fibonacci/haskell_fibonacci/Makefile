ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc fibonacci.hs -o fibonacci.exe
	@del fibonacci.o fibonacci.hi
unix:
	#@ghc fibonacci.hs -o fibonacci.exe # >&/dev/null
	@stack ghc fibonacci.hs # >&/dev/null
	@rm fibonacci.o fibonacci.hi
clean:
	@rm fibonacci.exe
