ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o quadratic.exe quadratic.lua
endif
ifeq ($(OS),Linux)
	@luac -o quadratic.exe quadratic.lua
endif
Windows_NT:
	@luac quadratic.lua
clean: