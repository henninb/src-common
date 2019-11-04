ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc anagram.hs -o anagram.exe
	@del anagram.o anagram.hi
unix:
	@ghc anagram.hs -o anagram.exe # >&/dev/null
	@rm anagram.o anagram.hi
clean:
	@rm anagram.exe
