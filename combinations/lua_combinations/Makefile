ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o combinations.exe combinations.lua
endif
ifeq ($(OS),Linux)
	@luac -o combinations.exe combinations.lua
endif
Windows_NT:
	@luac combinations.lua
clean: