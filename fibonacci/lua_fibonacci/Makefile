ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o fibonacci.exe fibonacci.lua
endif
ifeq ($(OS),Linux)
	@luac -o fibonacci.exe fibonacci.lua
endif
Windows_NT:
	@luac fibonacci.lua
clean: