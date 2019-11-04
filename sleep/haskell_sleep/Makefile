ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc sleep.hs -o sleep.exe
	@del sleep.o sleep.hi
unix:
	@ghc sleep.hs -o sleep.exe # >&/dev/null
	@rm sleep.o sleep.hi
clean:
	@rm sleep.exe
