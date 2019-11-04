ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o factors.exe factors.lua
endif
ifeq ($(OS),Linux)
	@luac -o factors.exe factors.lua
endif
Windows_NT:
	@luac factors.lua
clean: