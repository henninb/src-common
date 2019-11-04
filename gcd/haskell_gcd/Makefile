ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc gcd.hs -o gcd.exe
	@del gcd.o gcd.hi
unix:
	@ghc gcd.hs -o gcd.exe # >&/dev/null
	@rm gcd.o gcd.hi
clean:
	@rm gcd.exe
