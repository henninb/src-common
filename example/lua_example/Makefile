ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o example.exe example.lua
endif
ifeq ($(OS),Linux)
	@luac -o example.exe example.lua
endif
Windows_NT:
	@luac example.lua
clean: