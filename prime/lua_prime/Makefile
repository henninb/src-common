ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o prime.exe prime.lua
endif
ifeq ($(OS),Linux)
	@luac -o prime.exe prime.lua
endif
Windows_NT:
	@luac prime.lua
clean: