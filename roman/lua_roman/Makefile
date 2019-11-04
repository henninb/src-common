ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o roman.exe roman.lua
endif
ifeq ($(OS),Linux)
	@luac -o roman.exe roman.lua
endif
Windows_NT:
	@luac roman.lua
clean: