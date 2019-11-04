ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc factorial.hs -o factorial.exe
	@del factorial.o factorial.hi
unix:
	@ghc factorial.hs -o factorial.exe # >&/dev/null
	@rm factorial.o factorial.hi
clean:
	@rm factorial.exe
