ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc roman.hs -o roman.exe
	@del roman.o roman.hi
unix:
	@ghc roman.hs -o roman.exe # >&/dev/null
	@rm roman.o roman.hi
clean:
	@rm roman.exe
