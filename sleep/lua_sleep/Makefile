ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o sleep.exe sleep.lua
endif
ifeq ($(OS),Linux)
	@luac -o sleep.exe sleep.lua
endif
Windows_NT:
	@luac sleep.lua
clean: