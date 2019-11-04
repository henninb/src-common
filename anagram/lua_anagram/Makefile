ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o anagram.exe anagram.lua
endif
ifeq ($(OS),Linux)
	@luac -o anagram.exe anagram.lua
endif
Windows_NT:
	@luac anagram.lua
clean: