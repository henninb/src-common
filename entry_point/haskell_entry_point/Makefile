ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc entry_point.hs -o entry_point.exe
	@del entry_point.o entry_point.hi
unix:
	@ghc entry_point.hs -o entry_point.exe # >&/dev/null
	@rm entry_point.o entry_point.hi
clean:
	@rm entry_point.exe
