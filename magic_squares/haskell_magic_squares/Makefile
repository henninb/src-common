ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc magic_squares.hs -o magic_squares.exe
	@del magic_squares.o magic_squares.hi
unix:
	@ghc magic_squares.hs -o magic_squares.exe # >&/dev/null
	@rm magic_squares.o magic_squares.hi
clean:
	@rm magic_squares.exe
