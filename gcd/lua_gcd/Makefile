ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o gcd.exe gcd.lua
endif
ifeq ($(OS),Linux)
	@luac -o gcd.exe gcd.lua
endif
Windows_NT:
	@luac gcd.lua
clean: