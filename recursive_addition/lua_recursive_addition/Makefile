ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o recursive_addition.exe recursive_addition.lua
endif
ifeq ($(OS),Linux)
	@luac -o recursive_addition.exe recursive_addition.lua
endif
Windows_NT:
	@luac recursive_addition.lua
clean: