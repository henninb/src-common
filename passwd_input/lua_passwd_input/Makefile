ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o passwd_input.exe passwd_input.lua
endif
ifeq ($(OS),Linux)
	@luac -o passwd_input.exe passwd_input.lua
endif
Windows_NT:
	@luac passwd_input.lua
clean: