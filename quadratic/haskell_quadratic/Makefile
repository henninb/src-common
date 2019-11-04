ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc quadratic.hs -o quadratic.exe
	@del quadratic.o quadratic.hi
unix:
	@ghc quadratic.hs -o quadratic.exe # >&/dev/null
	@rm quadratic.o quadratic.hi
clean:
	@rm quadratic.exe
