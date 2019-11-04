ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc hostname_info.hs -o hostname_info.exe
	@del hostname_info.o hostname_info.hi
unix:
	@ghc hostname_info.hs -o hostname_info.exe # >&/dev/null
	@rm hostname_info.o hostname_info.hi
clean:
	@rm hostname_info.exe
