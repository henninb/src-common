ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o nqueens.exe nqueens.lua
endif
ifeq ($(OS),Linux)
	@luac -o nqueens.exe nqueens.lua
endif
Windows_NT:
	@luac nqueens.lua
clean: