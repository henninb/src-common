ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc factors.hs -o factors.exe
	@del factors.o factors.hi
unix:
	@ghc factors.hs -o factors.exe # >&/dev/null
	@rm factors.o factors.hi
clean:
	@rm factors.exe
