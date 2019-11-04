ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o magic_squares.exe magic_squares.lua
endif
ifeq ($(OS),Linux)
	@luac -o magic_squares.exe magic_squares.lua
endif
Windows_NT:
	@luac magic_squares.lua
clean: